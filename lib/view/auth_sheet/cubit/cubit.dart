import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/repository/auth_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(const AuthState.signIn());

  void changeAuthState() {
    emit(
      state is _AuthSignInState ? const AuthState.signUp() : const AuthState.signIn(),
    );
  }

  void signUp({
    required String email,
    required String nickname,
    required String password,
  }) async {
    await authRepository.signUp(nickname: nickname, email: email, password: password);
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    await authRepository.signIn(email: email, password: password);
  }
}
