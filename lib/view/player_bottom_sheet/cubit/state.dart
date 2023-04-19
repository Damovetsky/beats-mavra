part of 'cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = _PlayerInitialState;
  const factory PlayerState.shrinkedLoading() = _PlayerShrinkedLoadingState;
  const factory PlayerState.shrink() = _PlayerShrinkedState;
}
