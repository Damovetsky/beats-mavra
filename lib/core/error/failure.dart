abstract class Failure {
  final String? message;

  Failure({this.message});
}

class ConnectionFailure extends Failure {}

class UnauthorizedFailur extends Failure {}

class WrongFormatFailure extends Failure {
  WrongFormatFailure({required super.message});
}

class UnknownFailure extends Failure {}