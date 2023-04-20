import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import '../../../data/service/purchases_service/models/offer_model.dart';
import '../entity/create_offer_entity.dart';
import '../entity/offer_entity.dart';
import '../entity/update_offer_entity.dart';

abstract class PurchasesRepository {
  Future<Either<Failure, void>> createOffer(
      CreateOfferEntity createOfferEntity);

  Future<Either<Failure, OfferEntity>> getOffer(String offerId);

  Future<Either<Failure, List<OfferEntity>>> getOffersByBeatId(String beatId);

  Future<Either<Failure, void>> updateOffer(
      String offerId, UpdateOfferEntity updateOfferEntity);

  Future<Either<Failure, void>> deleteOffer(String offerId);

  Future<Either<Failure, void>> buy(String buyerId, String offerId);
}
