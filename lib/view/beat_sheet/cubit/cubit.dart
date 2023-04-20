import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';


part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class BeatSheetCubit extends Cubit<BeatSheetState> {
  final BeatsRepository beatsRepository;

  BeatSheetCubit(this.beatsRepository) : super(const BeatSheetState.loading());

  Future<void> loadBeat(String beatId) async {
    emit(const BeatSheetState.loading());
    final beat = await beatsRepository.getBeat(beatId);
    emit(beat.fold(
          (failure) => const BeatSheetState.failure('not-found'),
          (beats) => BeatSheetState.beat(beats),
    ),
    );
  }
}