import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain/beats/entity/beat_entity.dart';
import '../../../../domain/beats/repository/beats_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

const int beatsPageSize = 12;

@injectable
class BeatCardListCubit extends Cubit<BeatCardListState> {
  final BeatsRepository beatsRepository;

  BehaviorSubject<BeatEntity?>? _feedController;
  StreamSubscription? _feedSubscription;

  BeatCardListCubit(this.beatsRepository) : super(const BeatCardListState.loading());

  Future<void> initialBeats({List<String>? beatsIds}) async {
    emit(const BeatCardListState.loading());
    await _refreshFeed();

    _feedSubscription =
        beatsRepository.get(_feedController!..add(null), limit: beatsPageSize, beatsIds: beatsIds).map((event) {
      return event.fold(
        (failure) => const BeatCardListState.failure(),
        (beats) => BeatCardListState.beats(beats: beats),
      );
    }).listen(emit);
  }

  void loadMore([BeatEntity? beatEntity]) {
    _feedController?.add(beatEntity);
  }

  Future<void> _refreshFeed() async {
    await _feedSubscription?.cancel();
    await _feedController?.close();
    _feedController = BehaviorSubject<BeatEntity?>();
  }

  @override
  Future<void> close() async {
    await _refreshFeed();
    return super.close();
  }
}
