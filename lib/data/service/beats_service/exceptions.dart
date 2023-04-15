class BeatAlreadyExistsException implements Exception {}

class BeatNotFoundException implements Exception {}

class BeatsUnknownException implements Exception {}

class BeatsExceptionFactory {
  Exception generateException(String code) {
    switch (code) {
      case 'already-exists':
        return BeatAlreadyExistsException();
      case 'not-found':
        return BeatNotFoundException();
      default:
        return BeatNotFoundException();
    }
  }
}
