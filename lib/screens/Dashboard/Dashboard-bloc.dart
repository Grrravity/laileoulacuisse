import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:laile_ou_la_cuisse/screens/Dashboard/Dashboard-event.dart';
import 'package:laile_ou_la_cuisse/screens/Dashboard/Dashboard-state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc();

  DashboardState get initialState => DashboardInitial();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    if (event is AccountButtonPressed) {
      yield DashboardAccount();
    }
    throw UnimplementedError();
  }
}