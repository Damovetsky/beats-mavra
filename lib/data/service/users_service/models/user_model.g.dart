// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      username: json['username'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      favourites: (json['favourites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'avatar': instance.avatar,
      'email': instance.email,
      'favourites': instance.favourites,
      'balance': instance.balance,
    };
