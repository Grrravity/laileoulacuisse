import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:quickjobs_flu/screens/dashboard/Dashboard-event.dart';
import 'package:quickjobs_flu/screens/dashboard/Dashboard-state.dart';

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