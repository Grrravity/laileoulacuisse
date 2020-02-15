import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:laile_ou_la_cuisse/screens/First/First-event.dart';
import 'package:laile_ou_la_cuisse/screens/First/First-state.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  FirstBloc();

  FirstState get initialState => FirstInitial();

  @override
  Stream<FirstState> mapEventToState(FirstEvent event) async* {
    if (event is RegisterButtonPressed) {
      yield FirstRegister();
    }
    throw UnimplementedError();
  }
}