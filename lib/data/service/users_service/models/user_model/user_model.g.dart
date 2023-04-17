// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as String,
      nickname: json['nickname'] as String,
      avatar: json['avatar'] as String,
      description: json['description'] as String,
      favorites:
          (json['favorites'] as List<dynamic>).map((e) => e as String).toList(),
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'description': instance.description,
      'favorites': instance.favorites,
      'balance': instance.balance,
    };
