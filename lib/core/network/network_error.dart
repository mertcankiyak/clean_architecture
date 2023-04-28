class Failure extends Error {
  String? errorMessage;
  int? statusCode;

  Failure({this.errorMessage, this.statusCode});
}
