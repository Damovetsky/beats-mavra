// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeatModel _$$_BeatModelFromJson(Map<String, dynamic> json) => _$_BeatModel(
      beatId: json['beatId'] as String,
      authorId: json['authorId'] as String,
      cover: json['cover'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      mp3FileId: json['mp3FileId'] as String,
      wavFileId: json['wavFileId'] as String?,
      zipFileId: json['zipFileId'] as String?,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      temp: json['temp'] as int,
      dimension: json['dimension'] as String,
      graph: (json['graph'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_BeatModelToJson(_$_BeatModel instance) =>
    <String, dynamic>{
      'beatId': instance.beatId,
      'authorId': instance.authorId,
      'cover': instance.cover,
      'title': instance.title,
      'description': instance.description,
      'mp3FileId': instance.mp3FileId,
      'wavFileId': instance.wavFileId,
      'zipFileId': instance.zipFileId,
      'genres': instance.genres,
      'temp': instance.temp,
      'dimension': instance.dimension,
      'graph': instance.graph,
    };
