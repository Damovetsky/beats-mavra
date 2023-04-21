part of 'cubit.dart';

@freezed
class BeatSheetState with _$BeatSheetState {
  const factory BeatSheetState.initial() = _BeatSheetInitialState;
  const factory BeatSheetState.loading() = _BeatSheetLoadingState;
  const factory BeatSheetState.success() = _BeatSheetSuccessState;
  const factory BeatSheetState.failure({
    required String title,
    required String message,
  }) = _BeatSheetFailureState;
}
