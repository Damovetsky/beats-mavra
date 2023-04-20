// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseModel _$$_PurchaseModelFromJson(Map<String, dynamic> json) =>
    _$_PurchaseModel(
      purchaseId: json['purchaseId'] as String,
      offerId: json['offerId'] as String,
      buyerId: json['buyerId'] as String,
      authorId: json['authorId'] as String,
    );

Map<String, dynamic> _$$_PurchaseModelToJson(_$_PurchaseModel instance) =>
    <String, dynamic>{
      'purchaseId': instance.purchaseId,
      'offerId': instance.offerId,
      'buyerId': instance.buyerId,
      'authorId': instance.authorId,
    };
