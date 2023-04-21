import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_model.freezed.dart';

part 'purchase_model.g.dart';

@freezed
class PurchaseModel with _$PurchaseModel {
  const factory PurchaseModel({
    required String purchaseId,
    required String offerId,
    required String buyerId,
    required String authorId,
  }) = _PurchaseModel;

  factory PurchaseModel.fromJson(Map<String, dynamic> json) => _$PurchaseModelFromJson(json);
}
