class ApiResponseBody{
  String _message;

  ApiResponseBody(
      this._message,
      );

  factory ApiResponseBody.fromJson(dynamic json) {
    return ApiResponseBody(
        json['message'] as String,
        );
  }

  @override
  String toString() {
    return '{'
        '${this._message},'
        '}';
  }

  String get message => _message;

  set message (String value) {
    _message = value;
  }
}