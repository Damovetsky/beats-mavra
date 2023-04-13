// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeatEntity _$$_BeatEntityFromJson(Map<String, dynamic> json) =>
    _$_BeatEntity(
      beatId: json['beatId'] as String,
      authorId: json['authorId'] as String,
      cover: json['cover'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      mp3: json['mp3'] as String,
      wav: json['wav'] as String,
      zip: json['zip'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      temp: json['temp'] as int,
      dimention: json['dimention'] as String,
    );

Map<String, dynamic> _$$_BeatEntityToJson(_$_BeatEntity instance) =>
    <String, dynamic>{
      'beatId': instance.beatId,
      'authorId': instance.authorId,
      'cover': instance.cover,
      'title': instance.title,
      'description': instance.description,
      'mp3': instance.mp3,
      'wav': instance.wav,
      'zip': instance.zip,
      'genres': instance.genres,
      'temp': instance.temp,
      'dimention': instance.dimention,
    };

_$_CreateBeat _$$_CreateBeatFromJson(Map<String, dynamic> json) =>
    _$_CreateBeat(
      authorId: json['authorId'] as String,
      cover: json['cover'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      mp3: json['mp3'] as String,
      wav: json['wav'] as String,
      zip: json['zip'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      temp: json['temp'] as int,
      dimention: json['dimention'] as String,
    );

Map<String, dynamic> _$$_CreateBeatToJson(_$_CreateBeat instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'cover': instance.cover,
      'title': instance.title,
      'description': instance.description,
      'mp3': instance.mp3,
      'wav': instance.wav,
      'zip': instance.zip,
      'genres': instance.genres,
      'temp': instance.temp,
      'dimention': instance.dimention,
    };

_$_UpdateBeat _$$_UpdateBeatFromJson(Map<String, dynamic> json) =>
    _$_UpdateBeat(
      cover: json['cover'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      mp3: json['mp3'] as String,
      wav: json['wav'] as String,
      zip: json['zip'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      temp: json['temp'] as int,
      dimention: json['dimention'] as String,
    );

Map<String, dynamic> _$$_UpdateBeatToJson(_$_UpdateBeat instance) =>
    <String, dynamic>{
      'cover': instance.cover,
      'title': instance.title,
      'description': instance.description,
      'mp3': instance.mp3,
      'wav': instance.wav,
      'zip': instance.zip,
      'genres': instance.genres,
      'temp': instance.temp,
      'dimention': instance.dimention,
    };
