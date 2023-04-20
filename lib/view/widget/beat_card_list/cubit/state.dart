part of 'cubit.dart';

@freezed
class BeatCardListState with _$BeatCardListState {
  const factory BeatCardListState.loading() = _BeatCardListLoadingState;

  const factory BeatCardListState.beats({required List<BeatEntity> beats}) = _BeatCardListState;

  const factory BeatCardListState.playableBeat({
    required String beatId,
    required BeatPlayingStatus status,
  }) = _BeatPlayableBeatState;

  const factory BeatCardListState.stop() = _BeatPlayableBeatStopState;

  const factory BeatCardListState.failure() = _FailureBeatCardListState;
}
