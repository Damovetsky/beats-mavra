import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/beats/repository/beats_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class PlayerCubit extends Cubit<PlayerState> {
  final BeatsRepository beatsRepository;

  PlayerCubit(this.beatsRepository) : super(const PlayerState.initial());
}
