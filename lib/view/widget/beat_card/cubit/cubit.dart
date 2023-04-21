import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/beats/entity/playable_beat_entity.dart';
import '../../../../domain/beats/repository/beats_repository.dart';

class BeatCardInitialState {}

@injectable
class BeatCardCubit extends Cubit<BeatCardInitialState> {
  final BeatsRepository beatsRepository;

  BeatCardCubit(this.beatsRepository) : super(BeatCardInitialState());

  void play(PlayableBeatEntity playableBeat) {
    beatsRepository.play(playableBeat);
  }
}
