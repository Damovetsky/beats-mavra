import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final BeatsRepository beatsRepository;

  SearchCubit(this.beatsRepository) : super(const SearchState.loading()) {}

  @override
  Future<void> close() async {}
}
