import 'dart:convert';

import '../../../domain/purchases/entity/create_offer_entity.dart';
import '../../service/purchases_service/models/offer_model.dart';

class CreateOfferEntityToOfferModelConverter
    extends Converter<CreateOfferEntity, OfferModel> {
  final String offerId;

  CreateOfferEntityToOfferModelConverter(this.offerId);

  @override
  OfferModel convert(CreateOfferEntity input) => OfferModel(
        offerId: offerId,
        beatId: input.beatId,
        licenseType: input.licenseType,
        fileType: input.fileType,
        price: input.price,
        authorId: input.authorId,
      );
}
