import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/exception.dart';
import '../../../core/error/failure.dart';
import '../../../domain/auth/repository/auth_repository.dart';
import '../../../domain/auth/repository/failure.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(const AuthState.initial());

  void signUp({
    required String email,
    required String nickname,
    required String password,
  }) async {
    emit(const AuthState.buttonLoading());

    final signUpEither = await authRepository.signUp(nickname: nickname, email: email, password: password);

    emit(
      signUpEither.fold(
        (failure) {
          if (failure is AccountAlreadyExistsFailure) {
            return AuthState.fieldFailure(emailError: 'auth_email_is_already_exists_error'.tr());
          } else if (failure is PasswordIsWeakFailure) {
            return AuthState.fieldFailure(emailError: 'auth_password_is_weak_error'.tr());
          }

          return AuthState.commonFailure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          );
        },
        (_) => const AuthState.success(),
      ),
    );
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.buttonLoading());

    final signUpEither = await authRepository.signIn(email: email, password: password);

    emit(
      signUpEither.fold(
        (failure) {
          if (failure is EmailNotFoundFailure) {
            return AuthState.fieldFailure(emailError: 'auth_user_not_found_error'.tr());
          } else if (failure is WrongPasswordFailure) {
            return AuthState.fieldFailure(emailError: 'auth_wrong_password_error'.tr());
          } else if (failure is TooManyRequestsFailure) {
            return AuthState.commonFailure(
              title: 'too_many_requests_error_title'.tr(),
              message: 'too_many_requests_error_message'.tr(),
            );
          }
          return AuthState.commonFailure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          );
        },
        (_) => const AuthState.success(),
      ),
    );
  }

  void signInWithGoogle() async {
    emit(const AuthState.googleLoading());

    final googleEither = await authRepository.signInWithGoogle();

    emit(
      googleEither.fold(
        (failure) {
          if (failure is UnauthorizedFailure) {
            return const AuthState.initial();
          }

          return AuthState.commonFailure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          );
        },
        (_) => const AuthState.success(),
      ),
    );
  }

  void signInWithApple() async {
    emit(const AuthState.appleLoading());

    final googleEither = await authRepository.signInWithApple();

    emit(
      googleEither.fold(
        (failure) {
          if (failure is UnauthorizedFailure) {
            return const AuthState.initial();
          }

          return AuthState.commonFailure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          );
        },
        (_) => const AuthState.success(),
      ),
    );
  }
}
