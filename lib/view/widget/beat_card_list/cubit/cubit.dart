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

  final _feedController = BehaviorSubject<BeatEntity?>();
  StreamSubscription? _feedSubscription;

  BeatCardListCubit(this.beatsRepository) : super(const BeatCardListState.loading());

  Future<void> initialBeats({List<String>? beatsIds}) async {
    final initialCompleter = Completer();

    emit(const BeatCardListState.loading());
    await _feedSubscription?.cancel();
    _feedSubscription =
        beatsRepository.get(_feedController..add(null), limit: beatsPageSize, beatsIds: beatsIds).doOnData((event) {
      if (!initialCompleter.isCompleted) {
        initialCompleter.complete();
      }
    }).map((event) {
      return event.fold(
        (failure) => const BeatCardListState.failure(),
        (beats) => BeatCardListState.beats(beats: beats),
      );
    }).listen(emit);

    return initialCompleter.future;
  }

  void loadMore([BeatEntity? beatEntity]) {
    _feedController.add(beatEntity);
  }

  @override
  Future<void> close() async {
    await _feedSubscription?.cancel();
    await _feedController.close();
    return super.close();
  }
}
