import 'dart:convert';

import '../../../domain/purchases/entity/update_offer_entity.dart';
import '../../service/purchases_service/models/offer_model.dart';

class UpdateOfferEntityToOfferModelConverter
    extends Converter<UpdateOfferEntity, OfferModel> {
  final String offerId;

  UpdateOfferEntityToOfferModelConverter(this.offerId);

  @override
  OfferModel convert(UpdateOfferEntity input) => OfferModel(
        offerId: offerId,
        beatId: input.beatId,
        licenseType: input.licenseType,
        fileType: input.fileType,
        price: input.price,
        authorId: input.authorId,
      );
}
