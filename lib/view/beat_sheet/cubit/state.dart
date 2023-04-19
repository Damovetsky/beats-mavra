part of 'cubit.dart';

@freezed
class BeatSheetState with _$BeatSheetState {
  const factory BeatSheetState.loading() = _LoadingBeatSheetState;

  const factory BeatSheetState.beat({required BeatEntity beatEntity}) = _BeatSheetState;

  const factory BeatSheetState.failure() = _FailureBeatSheetState;
}
