import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


abstract class LoginState extends Equatable {

  const LoginState();

  // Making the class equatable
  // TODO: Aren't the states classes missing the override as well?
  @override
  List<Object> get props => [];
}

// The initital, inactive state of the Login
class LoginInitial extends LoginState {}

// TODO: Login valid / invalid ?
// To check for the validity of the input ?

// The data have been input in the login form
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {}

// TODO: LoadingLoaded
// Where is the finished login state, without error?

// The login is done loading and got an error
class LoginFailure extends LoginState {

  final String error;

  const LoginFailure({@required this.error});
}