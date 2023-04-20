part of 'cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitalState;

  const factory AuthState.buttonLoading() = _AuthLoadingState;

  const factory AuthState.googleLoading() = _AuthGoogleLoadingState;

  const factory AuthState.appleLoading() = _AuthAppleLoadingState;

  const factory AuthState.success() = _AuthSuccessState;

  const factory AuthState.fieldFailure({
    String? emailError,
    String? nicknameError,
    String? passwordError,
  }) = _AuthFieldFailureState;

  const factory AuthState.commonFailure({
    required String title,
    required String message,
  }) = _AuthCommonFailureState;
}
