import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain/beats/entity/beat_entity.dart';
import '../../../../domain/beats/entity/filter_beats_entity.dart';
import '../../../../domain/beats/repository/beats_repository.dart';

part 'cubit.freezed.dart';

part 'state.dart';

const int beatsPageSize = 12;

@injectable
class BeatCardListCubit extends Cubit<BeatCardListState> {
  final BeatsRepository beatsRepository;

  BehaviorSubject<BeatEntity?>? _feedController;
  StreamSubscription? _feedSubscription;
  StreamSubscription? _playableBeatSubscription;

  BeatCardListCubit(this.beatsRepository) : super(const BeatCardListState.loading()) {
    _playableBeatSubscription = beatsRepository.playableBeatStream().map((playableBeat) {
      if (playableBeat == null) {
        return const BeatCardListState.stop();
      } else {
        return BeatCardListState.playableBeat(beatId: playableBeat.entity.beatId, status: playableBeat.status);
      }
    }).listen(emit);
  }

  Future<void> initialBeats({List<String>? beatsIds}) async {
    emit(const BeatCardListState.loading());
    await _refreshFeed();

    _feedSubscription = beatsRepository
        .get(
      _feedController!..add(null),
      limit: beatsPageSize,
      filterBeatsEntity: FilterBeatsEntity(beatIds: beatsIds),
    )
        .map((event) {
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
    await _playableBeatSubscription?.cancel();
    return super.close();
  }
}
