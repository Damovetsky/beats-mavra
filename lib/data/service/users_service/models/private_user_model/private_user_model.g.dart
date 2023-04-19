// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivateUserModel _$$_PrivateUserModelFromJson(Map<String, dynamic> json) =>
    _$_PrivateUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      balance: (json['balance'] as num).toDouble(),
      favorites:
          (json['favorites'] as List<dynamic>).map((e) => e as String).toList(),
      bought:
          (json['bought'] as List<dynamic>).map((e) => e as String).toList(),
      created:
          (json['created'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PrivateUserModelToJson(_$_PrivateUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'balance': instance.balance,
      'favorites': instance.favorites,
      'bought': instance.bought,
      'created': instance.created,
    };
