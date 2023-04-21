import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/purchases/entity/create_offer_entity.dart';
import '../../domain/purchases/entity/offer_entity.dart';
import '../../domain/purchases/entity/update_offer_entity.dart';
import '../../domain/purchases/repository/purchases_repository.dart';
import '../converters/beats/update_beat_entity_to_beat_model_converter.dart';
import '../converters/purchases/create_offer_entity_to_offer_model_converter.dart';
import '../converters/purchases/offer_model_to_offer_entity_converter.dart';
import '../converters/purchases/update_offer_entity_to_offer_model_converter.dart';
import '../service/beats_service/beats_service.dart';
import '../service/purchases_service/models/offer_model.dart';
import '../service/purchases_service/models/purchase_model.dart';
import '../service/purchases_service/purchases_service.dart';
import '../service/users_service/users_service.dart';

@LazySingleton(as: PurchasesRepository)
class PurchasesRepositoryImpl implements PurchasesRepository {
  BeatsService beatsService;
  UserService usersService;
  PurchasesService purchasesService;

  PurchasesRepositoryImpl(
    this.beatsService,
    this.usersService,
    this.purchasesService,
  );

  @override
  Future<Either<Failure, void>> createOffer(
    CreateOfferEntity createOfferEntity,
  ) async {
    try {
      return Right(
        await purchasesService.createOffer(
          CreateOfferEntityToOfferModelConverter(const Uuid().v4()).convert(
            createOfferEntity,
          ),
        ),
      );
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, OfferEntity>> getOffer(String offerId) async {
    try {
      return await purchasesService.getOffer(offerId).then(
            (value) => Right(OfferModelToOfferEntityConverter().convert(value)),
          );
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  Future<Either<Failure, List<OfferEntity>>> getOffersByBeatId(
    String beatId,
  ) async {
    try {
      return Right(
        (await purchasesService.get(beatId)).map((e) => OfferModelToOfferEntityConverter().convert(e)).toList(),
      );
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> updateOffer(String offerId, UpdateOfferEntity updateOfferEntity) async {
    try {
      return Right(
        purchasesService.getOffer(offerId).then(
              (value) => purchasesService.updateOffer(
                UpdateOfferEntityToOfferModelConverter(offerId).convert(updateOfferEntity),
              ),
            ),
      );
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteOffer(String offerId) async {
    try {
      return Right(await purchasesService.deleteOffer(offerId));
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> buy(String buyerId, String offerId) async {
    try {
      return (await getOffer(offerId)).fold((l) => Left(l), (offer) async {
        await usersService.changeBalance(buyerId, -offer.price);
        await usersService.changeBalance(offer.authorId, offer.price);
        await usersService.changeBeatInMap(
          userId: buyerId,
          beatId: offer.beatId,
          mapName: 'bought',
          checked: true,
        );

        await purchasesService.createPurchase(
          PurchaseModel(
            purchaseId: const Uuid().v4(),
            offerId: offerId,
            buyerId: buyerId,
            authorId: offer.authorId,
          ),
        );
        return const Right(null);
      });
    } on NotFoundException {
      return Left(NotFoundFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }
}
