// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicUserModel _$$_PublicUserModelFromJson(Map<String, dynamic> json) =>
    _$_PublicUserModel(
      id: json['id'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      nickname: json['nickname'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_PublicUserModelToJson(_$_PublicUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
      'nickname': instance.nickname,
      'description': instance.description,
    };
