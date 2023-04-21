import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/repository/auth_repository.dart';
import '../../../domain/purchases/entity/offer_entity.dart';
import '../../../domain/purchases/repository/purchases_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class PurchaseCubit extends Cubit<PurchaseState> {
  final AuthRepository authRepository;
  final PurchasesRepository purchasesRepository;

  PurchaseCubit(this.authRepository, this.purchasesRepository) : super(const PurchaseState.loading());

  Future<void> loadOffers(String beatId) async {
    emit(const PurchaseState.loading());

    final offersEither = await purchasesRepository.getOffersByBeatId(beatId);

    emit(
      offersEither.fold<PurchaseState>((failure) => PurchaseState.failure(message: 'offer_load_error'.tr()),
          (offersList) {
        final reversedOffers = offersList.reversed.toList();
        return PurchaseState.offers(offers: reversedOffers, currentOffer: reversedOffers.first);
      }),
    );
  }

  void changeOffer(List<OfferEntity> offers, OfferEntity offer) {
    emit(PurchaseState.offers(offers: offers, currentOffer: offer));
  }

  void buy(OfferEntity offer) async {
    emit(const PurchaseState.buyLoading());
    final buyerId = (await authRepository.getUserID().first);

    if (buyerId != null) {
      final buyEither = await purchasesRepository.buy(buyerId, offer.offerId);

      emit(
        buyEither.fold(
          (l) => const PurchaseState.failure(message: 'error'),
          (r) => const PurchaseState.success(),
        ),
      );
    }
  }
}
