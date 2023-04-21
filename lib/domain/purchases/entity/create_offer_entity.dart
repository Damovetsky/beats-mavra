import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_offer_entity.freezed.dart';

@freezed
class CreateOfferEntity with _$CreateOfferEntity {
  const factory CreateOfferEntity({
    required String beatId,
    required String authorId,
    required String licenseType,
    required String fileType,
    required int price,
  }) = _CreateOfferEntity;
}
