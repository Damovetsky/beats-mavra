import '../../../core/error/failure.dart';

class AccountAlreadyExistsFailure extends Failure {}

class PasswordIsWeakFailure extends Failure {}

class EmailNotFoundFailure extends Failure {}

class WrongPasswordFailure extends Failure {}