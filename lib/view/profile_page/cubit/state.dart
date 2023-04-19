part of 'cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileLoadingState;

  const factory ProfileState.profile({
    required PrivateUserEntity privateUser,
    required PublicUserEntity publicUser,
  }) = _ProfileState;

  const factory ProfileState.needAuth() = _ProfileNeedAuthState;

  const factory ProfileState.failure({required String message}) = _ProfileFailureState;
}
