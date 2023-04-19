// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_private_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePrivateUserModel _$CreatePrivateUserModelFromJson(
        Map<String, dynamic> json) =>
    CreatePrivateUserModel(
      json['id'] as String,
      json['email'] as String,
    )
      ..balance = (json['balance'] as num?)?.toDouble() ?? 0
      ..favorite = (json['favorite'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ) ??
          {}
      ..bought = (json['bought'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ) ??
          {}
      ..created = (json['created'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ) ??
          {};

Map<String, dynamic> _$CreatePrivateUserModelToJson(
        CreatePrivateUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'balance': instance.balance,
      'favorite': instance.favorite,
      'bought': instance.bought,
      'created': instance.created,
    };
