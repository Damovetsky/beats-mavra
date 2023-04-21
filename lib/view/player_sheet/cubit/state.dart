part of 'cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = _PlayerInitialState;
  const factory PlayerState.loading() = _PlayerShrinkedLoadingState;
  const factory PlayerState.player({
    required BeatPlayingStatus status,
    required PublicUserEntity? author,
    required BeatEntity entity,
    required String beatUrl,
  }) = _PlayerState;
  const factory PlayerState.failure({required String title, required String message}) = _PlayerFailureState;
}
