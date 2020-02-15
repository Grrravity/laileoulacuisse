import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();
}

class MenuButtonPressed extends MenuEvent {

  final String usermail;
  final String password;

  const MenuButtonPressed({
      @required this.usermail,
      @required this.password,
  });

  // Overriding properties to make them equatable
  @override
  List<Object> get props =>[usermail, password];

  @override
  String toString() =>
      'MenuButtonPressed {usermail: $usermail, password: $password }';
}

