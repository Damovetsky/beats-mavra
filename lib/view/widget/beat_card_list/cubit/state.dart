part of 'cubit.dart';

@freezed
class BeatCardListState with _$BeatCardListState {
  const factory BeatCardListState.loading() = _BeatCardListState;

  const factory BeatCardListState.beats({required List<BeatEntity> beats}) = _BeatsBeatCardListState;

  const factory BeatCardListState.failure() = _FailureBeatCardListState;
}
