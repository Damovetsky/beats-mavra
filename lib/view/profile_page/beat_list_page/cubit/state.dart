part of 'cubit.dart';

@freezed
class BeatListState with _$BeatListState {
  const factory BeatListState.loading() = _LoadingBeatListState;

  const factory BeatListState.beats() = _BeatsListState;

  const factory BeatListState.failure() = _FailureBeatListState;
}
