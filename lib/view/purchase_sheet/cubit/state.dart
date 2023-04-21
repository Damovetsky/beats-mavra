part of 'cubit.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.loading() = _PurchaseLoadingState;

  const factory PurchaseState.unactive({
    required List<OfferEntity> offers,
    String? currentGrade,
  }) = _PurchaseUnactiveState;

  // const factory PurchaseState.chosen({required String grade}) =
  //     _PurchaseChosenState;

  const factory PurchaseState.failure({required String message}) =
      _PurchaseFailureState;
}
