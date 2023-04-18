import 'dart:convert';

import '../../domain/beats/entity/beat_entity.dart';
import '../service/beats_service/models/beat_model.dart';

class BeatEntityToBeatModelConverter extends Converter<BeatEntity, BeatModel> {
  @override
  BeatModel convert(BeatEntity input) => BeatModel(
        beatId: input.beatId,
        authorId: input.authorId,
        cover: input.cover,
        title: input.title,
        description: input.description,
        mp3: input.mp3,
        wav: input.wav,
        zip: input.zip,
        genres: input.genres,
        temp: input.temp,
        dimension: input.dimension,
      );
}
