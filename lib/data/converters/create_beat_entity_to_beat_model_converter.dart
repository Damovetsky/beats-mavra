import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../domain/beats/entity/create_beat_entity.dart';
import '../service/beats_service/models/beat_model.dart';

@Injectable(as: Converter<CreateBeatEntity, BeatModel>)
class CreateBeatEntityToBeatModelConverter
    extends Converter<CreateBeatEntity, BeatModel> {
  final String beatId;

  CreateBeatEntityToBeatModelConverter(this.beatId);

  @override
  BeatModel convert(CreateBeatEntity input) => BeatModel(
        beatId: beatId,
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
        graph: [],
      );
}
