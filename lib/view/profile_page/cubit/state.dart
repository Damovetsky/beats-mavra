part of 'cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileLoadingState;

  const factory ProfileState.profile({required UserEntity user}) = _ProfileState;

  const factory ProfileState.failure({required String message}) = _ProfileFailureState;
}
