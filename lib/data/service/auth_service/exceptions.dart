import 'package:injectable/injectable.dart';

import '../../../core/error/exception.dart';

class AccountAlreadyExistsException implements Exception {}

class PasswordIsWeakException implements Exception {}

class NotFoundUserException implements Exception {}

class PasswordWrongException implements Exception {}

@injectable
class AuthExceptionFactory {
  Exception generateException(String code) {
    switch (code) {
      case 'weak-password':
        return PasswordIsWeakException();
      case 'email-already-in-use':
        return AccountAlreadyExistsException();

      case 'user-not-found':
        return NotFoundUserException();

      case 'wrong-password':
        return PasswordWrongException();

      case 'too-many-requests':
        return TooManyRequestsException();

      default:
        return UnknownException();
    }
  }
}
