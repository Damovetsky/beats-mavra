import 'dart:convert';

import '../../../domain/beats/entity/create_beat_entity.dart';
import '../../service/beats_service/models/beat_model.dart';

class CreateBeatEntityToBeatModelConverter extends Converter<CreateBeatEntity, BeatModel> {
  final String beatId;

  CreateBeatEntityToBeatModelConverter(this.beatId);

  @override
  BeatModel convert(CreateBeatEntity input) => BeatModel(
        beatId: beatId,
        authorId: input.authorId,
        cover: input.cover,
        title: input.title,
        description: input.description,
        mp3FileId: input.mp3FileId,
        wavFileId: input.wavFileId,
        zipFileId: input.zipFileId,
        genres: input.genres,
        temp: input.temp,
        dimension: input.dimension,
        graph: input.graph,
      );
}
