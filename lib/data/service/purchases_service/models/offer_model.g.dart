// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferModel _$$_OfferModelFromJson(Map<String, dynamic> json) =>
    _$_OfferModel(
      offerId: json['offerId'] as String,
      beatId: json['beatId'] as String,
      authorId: json['authorId'] as String,
      licenseType: json['licenseType'] as String,
      fileType: json['fileType'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_OfferModelToJson(_$_OfferModel instance) =>
    <String, dynamic>{
      'offerId': instance.offerId,
      'beatId': instance.beatId,
      'authorId': instance.authorId,
      'licenseType': instance.licenseType,
      'fileType': instance.fileType,
      'price': instance.price,
    };
