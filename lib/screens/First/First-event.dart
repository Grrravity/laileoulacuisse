import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class FirstEvent extends Equatable{
  const FirstEvent();
}

class RegisterButtonPressed extends FirstEvent{

  @override
  // TODO: implement props
  List<Object> get props => throw 'logout started';
  @override
  String toString() =>
      'LogoutBtnPressed {logout started}';
}