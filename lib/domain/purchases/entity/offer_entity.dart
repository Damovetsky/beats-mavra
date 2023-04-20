import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_entity.freezed.dart';

@freezed
class OfferEntity with _$OfferEntity {
  const factory OfferEntity({
    required String offerId,
    required String beatId,
    required String authorId,
    required String licenseType,
    required String fileType,
    required int price,
  }) = _OfferEntity;
}
