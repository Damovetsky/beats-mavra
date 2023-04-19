// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_public_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePublicUserModel _$CreatePublicUserModelFromJson(
        Map<String, dynamic> json) =>
    CreatePublicUserModel(
      json['id'] as String,
      json['avatarUrl'] as String?,
      json['nickname'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$CreatePublicUserModelToJson(
        CreatePublicUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
      'nickname': instance.nickname,
      'description': instance.description,
    };
