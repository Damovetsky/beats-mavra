import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class BeatListCubit extends Cubit<BeatListState> {
  BeatListCubit() : super(const BeatListState.loading());
}
