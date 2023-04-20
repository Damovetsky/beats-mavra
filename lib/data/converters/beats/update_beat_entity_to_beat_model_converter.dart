import 'dart:convert';

import '../../../domain/beats/entity/update_beat_entity.dart';
import '../../service/beats_service/models/beat_model.dart';

class UpdateBeatEntityToBeatModelConverter extends Converter<UpdateBeatEntity, BeatModel> {
  final String beatId;
  final String authorId;

  UpdateBeatEntityToBeatModelConverter(this.beatId, this.authorId);

  @override
  BeatModel convert(UpdateBeatEntity input) => BeatModel(
        beatId: beatId,
        authorId: authorId,
        cover: input.cover,
        title: input.title,
        description: input.description,
        mp3FileId: input.mp3FileId,
        wavFileId: input.wavFileId,
        zipFileId: input.zipFileId,
        genres: input.genres,
        temp: input.temp,
        dimension: input.dimension,
        graph: [],
      );
}
