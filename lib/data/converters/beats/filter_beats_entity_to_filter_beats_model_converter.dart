import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/filter_beats_entity.dart';
import '../../service/beats_service/models/filter_beats_model.dart';

@injectable
class FilterBeatsEntityToFilterBeatsModelConverter extends Converter<FilterBeatsEntity, FilterBeatsModel> {
  @override
  FilterBeatsModel convert(FilterBeatsEntity input) => FilterBeatsModel(
        beatsIds: input.beatIds,
        genres: input.genres,
        tempStart: input.tempStart,
        tempEnd: input.tempEnd,
        dimension: input.dimension,
      );
}
