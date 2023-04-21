import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_purchase_entity.freezed.dart';

@freezed
class CreatePurchaseEntity with _$CreatePurchaseEntity {
  const factory CreatePurchaseEntity({
    required String offerId,
    required String buyerId,
    required String authorId,
  }) = _CreatePurchaseEntity;
}
