import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {

  final String usermail;
  final String password;

  const LoginButtonPressed({
      @required this.usermail,
      @required this.password,
  });

  // Overriding properties to make them equatable
  @override
  List<Object> get props =>[usermail, password];

  @override
  String toString() =>
      'LoginButtonPressed {usermail: $usermail, password: $password }';
}

