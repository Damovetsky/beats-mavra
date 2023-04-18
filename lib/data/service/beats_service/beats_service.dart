import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error/exception.dart';
import './models/beat_model.dart';
import './exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

abstract class BeatsService {
  Future<List<BeatModel>> getBeats<T>({
    T? lastVisible,
    String orderby,
    int limit = 25,
  });

  Future<BeatModel> createBeat(BeatModel beatModel);

  Future<BeatModel> getBeat(String beatId);

  Future<BeatModel> updateBeat(BeatModel beatModel);

  Future<void> deleteBeat(String beatId);

  Future<List<double>?> getGraph(File file);
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
          (FirebaseException error, stackTrace) =>
      throw exceptionFactory.generateException(error.code),
    );
  }

  @override
  Future<void> deleteBeat(String beatId) async {
    return beatsCollection.doc(beatId).delete().then((value) => null).onError(
          (FirebaseException error, stackTrace) =>
      throw exceptionFactory.generateException(error.code),
    );
  }

  @override
  Future<BeatModel> getBeat(String beatId) async {
    return beatsCollection
        .doc(beatId)
        .get()
        .then(
          (value) =>
      value.exists
          ? BeatModel.fromJson(value.data()!)
          : throw exceptionFactory.generateException('not-found'),
    )
        .onError(
          (FirebaseException error, stackTrace) =>
      throw exceptionFactory.generateException(error.code),
    );
  }

  @override
  Future<List<BeatModel>> getBeats<T>({
    T? lastVisible,
    String orderby = 'beatId',
    int limit = 25,
  }) async {
    var cursor = beatsCollection.orderBy(orderby).limit(limit);
    if (lastVisible != null) {
      cursor = cursor.startAfter([lastVisible]);
    }
    return cursor
        .get()
        .then(
          (snapshots) =>
          snapshots.docs
              .map((element) => BeatModel.fromJson(element.data()))
              .toList(growable: false),
    )
        .onError(
          (FirebaseException error, stackTrace) =>
      throw exceptionFactory.generateException(error.code),
    );
  }

  @override
  Future<BeatModel> updateBeat(BeatModel beatModel) async {
    return getBeat(beatModel.beatId).then(
          (value) =>
          beatsCollection
              .doc(beatModel.beatId)
              .set(beatModel.toJson())
              .then((value) => getBeat(beatModel.beatId))
              .onError(
                (FirebaseException error, stackTrace) =>
            throw exceptionFactory.generateException(error.code),
          ),
    );
  }

  @override
  Future<List<double>> getGraph(File file) async {
    final bytes = await file.readAsBytes();
    final bytesRes = [];
    final resolution = bytes.length ~/ 300;
    for (int i = 0; i < bytes.length; ++i) {
      if (i % resolution == 0) {
        bytesRes.add(bytes[i]);
      }
    }

    final response = await http.post(
        Uri.parse('http://localhost:8084/music/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'music': bytesRes.toString(),
        }),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final dataNew = data.map((e) => double.parse(e.toString())).toList();
      return dataNew;
    }
    if (response.statusCode == 400) {
      throw BadRequestException();
    } else {
      throw UnknownException();
    }
  }
}
