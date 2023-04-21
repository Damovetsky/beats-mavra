part of 'cubit.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.loading() = _PurchaseLoadingState;

  const factory PurchaseState.offers({
    required List<OfferEntity> offers,
    required OfferEntity currentOffer,
  }) = _PurchasesOffersState;

  const factory PurchaseState.buyLoading() = _PuchasesBuyLoadingState;

  const factory PurchaseState.success() = _PurchasesSuccessState;

  const factory PurchaseState.failure({required String message}) = _PurchaseFailureState;
}
