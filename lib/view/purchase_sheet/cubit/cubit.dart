import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/purchases/entity/offer_entity.dart';
import '../../../domain/purchases/repository/purchases_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class PurchaseCubit extends Cubit<PurchaseState> {
  final PurchasesRepository purchasesRepository;

  PurchaseCubit(this.purchasesRepository)
      : super(const PurchaseState.loading());

  Future<void> loadOffers(String beatId) async {
    emit(const PurchaseState.loading());

    final offersEither = await purchasesRepository.getOffersByBeatId(beatId);

    emit(
      offersEither.fold<PurchaseState>(
        (failure) => PurchaseState.failure(message: 'offer_load_error'.tr()),
        (offersList) => PurchaseState.unactive(offers: offersList),
      ),
    );
  }
}
