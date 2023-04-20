import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';
;

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class BeatSheetCubit extends Cubit<BeatSheetState> {
  final BeatsRepository beatsRepository;

  BeatSheetCubit(this.beatsRepository) : super(const BeatSheetState.loading());

  Future<void> loadBeat(String beatId) async{
    emit(const BeatSheetState.loading());
    final beat = await beatsRepository.getBeat(beatId);
    beat.fold(
            (l) => BeatSheetState.failure('not-found'),
            (r) => BeatSheetState.beat(r),
    );

  }

}