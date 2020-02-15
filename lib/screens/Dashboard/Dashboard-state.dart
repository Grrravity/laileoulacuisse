import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];

}

class DashboardInitial extends DashboardState {}
class DashboardLoading extends DashboardState {}
class DashboardAccount extends DashboardState {}


class DashboardFailure extends DashboardState {
  final String error;

  const DashboardFailure({@required this.error});

}