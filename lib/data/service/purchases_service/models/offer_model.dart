import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    required String offerId,
    required String beatId,
    required String authorId,
    required String licenseType,
    required String fileType,
    required int price,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) => _$OfferModelFromJson(json);
}
