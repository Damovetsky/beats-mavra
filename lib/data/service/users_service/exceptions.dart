import 'package:injectable/injectable.dart';

import '../../../core/error/exception.dart';

@injectable
class UsersExceptionFactory {
  Exception generateException(String code) {
    switch (code) {
      case 'not-found':
        return NotFoundException();
      default:
        return UnknownException();
    }
  }
}
