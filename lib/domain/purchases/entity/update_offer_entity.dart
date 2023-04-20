import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_offer_entity.freezed.dart';

@freezed
class UpdateOfferEntity with _$UpdateOfferEntity {
  const factory UpdateOfferEntity({
    required String beatId,
    required String authorId,
    required String licenseType,
    required String fileType,
    required int price,
  }) = _UpdateOfferEntity;
}
