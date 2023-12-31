import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import '../../../core/error/exception.dart';
import './models/beat_model.dart';
import './exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

import 'models/filter_beats_model.dart';

abstract class BeatsService {
  Future<List<BeatModel>> getBeats({
    int limit = 25,
    String? lastVisibleTitle,
    FilterBeatsModel filter = const FilterBeatsModel(),
  });

  Future<BeatModel> createBeat(BeatModel beatModel);

  Future<BeatModel> getBeat(String beatId);

  Future<BeatModel> updateBeat(BeatModel beatModel);

  Future<void> deleteBeat(String beatId);

  Future<List<double>> getGraph(File file);
}

@Injectable(as: BeatsService)
class BeatsServiceImpl implements BeatsService {
  final FirebaseFirestore firestoreInstance;
  final BeatsExceptionFactory exceptionFactory;
  late CollectionReference<Map<String, dynamic>> beatsCollection;

  BeatsServiceImpl(this.firestoreInstance, this.exceptionFactory) {
    beatsCollection = firestoreInstance.collection('beats');
  }

  @override
  Future<BeatModel> createBeat(BeatModel beatModel) async {
    return beatsCollection
        .doc(beatModel.beatId)
        .set(beatModel.toJson())
        .then((value) => getBeat(beatModel.beatId))
        .onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<void> deleteBeat(String beatId) async {
    return beatsCollection.doc(beatId).delete().then((value) => null).onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<BeatModel> getBeat(String beatId) async {
    return beatsCollection
        .doc(beatId)
        .get()
        .then(
          (value) =>
              value.exists ? BeatModel.fromJson(value.data()!) : throw exceptionFactory.generateException('not-found'),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<List<BeatModel>> getBeats({
    int limit = 25,
    String? lastVisibleTitle,
    FilterBeatsModel filter = const FilterBeatsModel(),
  }) async {
    var cursor = beatsCollection.orderBy('title').limit(limit);
    if (lastVisibleTitle != null) {
      cursor = cursor.startAfter([lastVisibleTitle]);
    }
    cursor = _createQueryFromFilter(cursor, filter);
    return cursor
        .get()
        .then(
          (snapshots) => snapshots.docs.map((element) => BeatModel.fromJson(element.data())).toList(growable: false),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<BeatModel> updateBeat(BeatModel beatModel) async {
    return getBeat(beatModel.beatId).then(
      (value) => beatsCollection
          .doc(beatModel.beatId)
          .set(beatModel.toJson())
          .then((value) => getBeat(beatModel.beatId))
          .onError(
            (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
          ),
    );
  }

  @override
  Future<List<double>> getGraph(File file) async {
    final bytes = await file.readAsBytes();
    final bytesRes = [];
    final resolution = bytes.length ~/ 200;
    for (int i = 0; i < bytes.length; ++i) {
      if (i % resolution == 0) {
        bytesRes.add(bytes[i]);
      }
    }

    final response = await http.post(
      Uri.parse('http://185.231.154.246:8080/music/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'music': bytesRes.toString(),
      }),
    );
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List).map((e) => double.parse(e.toString())).toList();
    }
    if (response.statusCode == 400) {
      throw BadRequestException();
    } else {
      throw UnknownException();
    }
  }

  Query<Map<String, dynamic>> _createQueryFromFilter(Query<Map<String, dynamic>> cursor, FilterBeatsModel filter) {
    if (filter.beatsIds != null) {
      cursor = cursor.where('beatId', whereIn: filter.beatsIds);
    }
    if (filter.genres != null) {
      cursor = cursor.where('genres', arrayContainsAny: filter.genres);
    }
    if (filter.tempStart != null) {
      cursor = cursor.where('temp', isGreaterThanOrEqualTo: filter.tempStart);
    }
    if (filter.tempEnd != null) {
      cursor = cursor.where('temp', isLessThanOrEqualTo: filter.tempEnd);
    }
    if (filter.dimension != null) {
      cursor = cursor.where('dimension', isEqualTo: filter.dimension);
    }
    return cursor;
  }
}
