import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../service/beats_service/models/beat_model.dart';

@injectable
class BeatModelToBeatEntityConverter extends Converter<BeatModel, BeatEntity> {
  @override
  BeatEntity convert(BeatModel input) => BeatEntity(
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
