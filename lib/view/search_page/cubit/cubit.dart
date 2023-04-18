import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';
import '../search_page.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final BeatsRepository beatsRepository;

  final _feedController = StreamController<BeatEntity?>();
  late StreamSubscription _feedSubscription;

  SearchCubit(this.beatsRepository) : super(const SearchState.loading()) {
    _feedSubscription = beatsRepository.get(_feedController, searchPageSize).map((event) {
      return event.fold(
        (failure) => const SearchState.failure(),
        (beats) => SearchState.feed(beats: beats),
      );
    }).listen(emit);
  }

  void loadMore([BeatEntity? beatEntity]) {
    _feedController.add(beatEntity);
  }

  @override
  Future<void> close() async {
    await _feedSubscription.cancel();
    return super.close();
  }
}
