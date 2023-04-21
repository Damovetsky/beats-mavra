import 'dart:convert';

import '../../../domain/purchases/entity/create_purchase_entity.dart';
import '../../service/purchases_service/models/purchase_model.dart';

class CreatePurchaseEntityToPurchaseModelConverter
    extends Converter<CreatePurchaseEntity, PurchaseModel> {
  final String purchaseId;

  CreatePurchaseEntityToPurchaseModelConverter(this.purchaseId);

  @override
  PurchaseModel convert(CreatePurchaseEntity input) => PurchaseModel(
        purchaseId: purchaseId,
        offerId: input.offerId,
        buyerId: input.buyerId,
        authorId: input.authorId,
      );
}
