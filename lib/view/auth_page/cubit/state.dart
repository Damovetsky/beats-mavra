part of 'cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.signIn() = _AuthSignInState;

  const factory AuthState.signUp() = _AuthSignUpState;

  const factory AuthState.failure({required String message}) =
      _AuthFailureState;
}
