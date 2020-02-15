import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:quickjobs_flu/models/AccessToken.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {

  //final String token;
  final AccessToken accessToken;

  //const LoggedIn({@required this.token});
  const LoggedIn({@required this.accessToken});

  @override
  List<Object> get props => [accessToken];

  @override
  String toString() => 'LoggedIn $accessToken';
}

class LoggedOut extends AuthenticationEvent {}

class LoginFailed extends AuthenticationEvent {
  final String error;

  const LoginFailed({@required this.error});

  @override
  List<Object> get props => [error,];

  @override
  String toString() => 'LoginFailed  test { error: $error }';
}
