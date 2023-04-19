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
      favorite: Map<String, bool>.from(json['favorite'] as Map),
      bought: Map<String, bool>.from(json['bought'] as Map),
      created: Map<String, bool>.from(json['created'] as Map),
    );

Map<String, dynamic> _$$_PrivateUserModelToJson(_$_PrivateUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'balance': instance.balance,
      'favorite': instance.favorite,
      'bought': instance.bought,
      'created': instance.created,
    };
