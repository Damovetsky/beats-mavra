part of 'cubit.dart';



@freezed
class BeatSheetState with _$BeatSheetState{
  const factory BeatSheetState.loading() = _BeatSheetLoadingState;
  const factory BeatSheetState.beat(BeatEntity? beat) = _BeatSheetState;
  const factory BeatSheetState.applyLoading() = _BeatSheetApplyLoadingState;
  const factory BeatSheetState.failure(String message) = _BeatSheetFailureState;

}