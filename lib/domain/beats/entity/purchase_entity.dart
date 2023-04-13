import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_entity.freezed.dart';

@freezed
class PurchaseEntity with _$PurchaseEntity{
  const factory PurchaseEntity({
    required String id,
    required String buyerId,
    required String sellerId,
    required String description,
    required DateTime timestamp,
    required String license,
    required List<String> fileTypes,
    required int cost,
  }) = _PurshaseEntity;
}
