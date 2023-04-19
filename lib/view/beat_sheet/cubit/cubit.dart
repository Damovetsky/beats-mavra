import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/entity/create_beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';
import '../widget/beat_files.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class BeatSheetCubit extends Cubit<BeatSheetState> {
  final BeatsRepository beatsRepository;

  BeatSheetCubit(this.beatsRepository) : super(const BeatSheetState.loading());

  Future<void> loadBeat({required String? beatId}) async {
    if (beatId != null) {
      final result = await beatsRepository.getBeat(beatId);

      emit(
        result.fold(
          (failure) => const BeatSheetState.failure(),
          (beat) => BeatSheetState.beat(beatEntity: beat),
        ),
      );
    } else {
      emit(BeatSheetState.beat(beatEntity: BeatEntity.empty()));
    }
  }

  Future<void> createBeat({
    required File cover,
    required String title,
    required String description,
    required Map<String, BeatViewObject?> files,
    required List<String> genres,
    required int tempo,
    required String dimension,
  }) async {}
}
