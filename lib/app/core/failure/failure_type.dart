class Failure {
  int? statusCode;
  String errorMessage;
  String type;

  Failure(this.errorMessage, {this.statusCode, this.type = ''});
}
