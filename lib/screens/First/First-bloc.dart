import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:quickjobs_flu/screens/first/First-event.dart';
import 'package:quickjobs_flu/screens/first/First-state.dart';

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