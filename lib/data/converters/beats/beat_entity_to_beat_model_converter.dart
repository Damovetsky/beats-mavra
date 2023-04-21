import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../service/beats_service/models/beat_model.dart';

@injectable
class BeatEntityToBeatModelConverter extends Converter<BeatEntity, BeatModel> {
  @override
  BeatModel convert(BeatEntity input) => BeatModel(
        beatId: input.beatId,
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
