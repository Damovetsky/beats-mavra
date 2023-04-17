class UserNotFoundException implements Exception {}

class UsersUnknownException implements Exception {}

class UsersExceptionFactory {
  Exception generateException(String code) {
    switch (code) {
      case 'not-found':
        return UserNotFoundException();
      default:
        return UserNotFoundException();
    }
  }
}
