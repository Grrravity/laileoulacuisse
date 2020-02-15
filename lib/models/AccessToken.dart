class AccessToken{
  String _token_type;
  int _expires_in;
  String _access_token;
  String _refresh_token;

  AccessToken(
      this._token_type,
      this._expires_in,
      this._access_token,
      this._refresh_token,
      );
  //AccessToken.fromJson(Map<String, dynamic> parsedJson) {
  //  _token_type        = parsedJson['token_type'];
  //  _expires_in        = parsedJson['expires_in'];
  //  _access_token      = parsedJson['access_token'];
  //  _refresh_token     = parsedJson['refresh_token'];
  //}

  factory AccessToken.fromJson(dynamic json) {
    return AccessToken(
        json['token_type'] as String,
        json['expires_in'] as int,
        json['access_token'] as String,
        json['refresh_token'] as String
        );
  }

  @override
  String toString() {
    return '{'
        '${this.token_type},'
        '${this.expires_in},'
        '${this.access_token},'
        '${this.refresh_token}'
        '}';
  }

  String get token_type => _token_type;

  set token_type (String value) {
    _token_type = value;
  }

  int get expires_in => _expires_in;

  set expires_in (int value) {
    _expires_in = value;
  }

  String get access_token => _access_token;

  set access_token (String value) {
    _access_token = value;
  }

  String get refresh_token => _refresh_token;

  set refresh_token (String value) {
    _refresh_token = value;
  }

}