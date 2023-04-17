import 'package:injectable/injectable.dart';

import '../../../core/error/exception.dart';

class BeatNotFoundException implements Exception {}

class BeatsUnknownException implements Exception {}

@injectable
class BeatsExceptionFactory {
  Exception generateException(String code) {
    switch (code) {
      case 'already-exists':
        return AlreadyExistException();
      case 'not-found':
        return NotFoundException();
      default:
        return UnknownException();
    }
  }
}
