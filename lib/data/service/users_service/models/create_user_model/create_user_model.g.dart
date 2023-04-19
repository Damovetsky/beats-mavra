// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserModel _$CreateUserModelFromJson(Map<String, dynamic> json) =>
    CreateUserModel(
      json['id'] as String,
      json['email'] as String,
      json['avatarUrl'] as String?,
      json['description'] as String?,
    )
      ..balance = (json['balance'] as num?)?.toDouble() ?? 0
      ..favorites = (json['favorites'] as Map<String, dynamic>?)?.map(
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

Map<String, dynamic> _$CreateUserModelToJson(CreateUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'description': instance.description,
      'balance': instance.balance,
      'favorites': instance.favorites,
      'bought': instance.bought,
      'created': instance.created,
    };
