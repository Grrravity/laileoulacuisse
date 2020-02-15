import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable{
  const DashboardEvent();
}

class AccountButtonPressed extends DashboardEvent{

  @override
  // TODO: implement props
  List<Object> get props => throw 'logout started';
  @override
  String toString() =>
      'LogoutBtnPressed {logout started}';
}