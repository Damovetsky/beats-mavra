import 'dart:convert';

import '../../../domain/purchases/entity/offer_entity.dart';
import '../../service/purchases_service/models/offer_model.dart';

class OfferModelToOfferEntityConverter
    extends Converter<OfferModel, OfferEntity> {
  @override
  OfferEntity convert(OfferModel input) => OfferEntity(
        offerId: input.offerId,
        beatId: input.beatId,
        licenseType: input.licenseType,
        fileType: input.fileType,
        price: input.price,
        authorId: input.authorId,
      );
}
