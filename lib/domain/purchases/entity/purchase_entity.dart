import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_entity.freezed.dart';

@freezed
class PurchaseEntity with _$PurchaseEntity {
  const factory PurchaseEntity({
    required String purchaseId,
    required String offerId,
    required String buyerId,
    required String authorId,
  }) = _PurchaseEntity;
}
