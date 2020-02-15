import 'package:meta/meta.dart';

class User {
  Future<String> authenticate({
    @required String usermail,
    @required String password,
    @required String provider,
    String firstName, lastName, telephone,
  }) async {
    await Future.delayed(Duration(seconds: 1));

    // Pourquoi une string 'token' ?
    return 'user';
  }

  Future<void> deleteUser() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistUser(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasUser() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}