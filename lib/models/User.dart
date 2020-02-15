import 'package:meta/meta.dart';

class User {
  Future<String> authenticate({
    @required String usermail,
    @required String password,
    @required String provider,
  }) async {
    await Future.delayed(Duration(seconds: 1));

    // Pourquoi une string 'token' ?
    return 'token';
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }

}

class UserRegister{
  Future<String>authRegister({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String telephone,
    @required String password,
    @required String passwordRepeat,
    @required String provider,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    return 'token';
  }

  Future<void> deleteRegisterToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistRegisterToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasRegisterToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}
