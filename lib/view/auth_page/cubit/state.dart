part of 'cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.signIn({required bool hasText}) = _AuthSignInState;

  const factory AuthState.signUp({required bool hasText}) = _AuthSignUpState;

  const factory AuthState.failure({required String message}) =
      _AuthFailureState;
}
