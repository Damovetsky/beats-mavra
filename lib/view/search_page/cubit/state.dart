part of 'cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _SearchState;

  const factory SearchState.feed({required List<BeatEntity> beats}) = _FeedSearchState;

  const factory SearchState.failure() = _FailureSearchState;
}
