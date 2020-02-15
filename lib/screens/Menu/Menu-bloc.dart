import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:laile_ou_la_cuisse/screens/Menu/Menu-event.dart';
import 'package:laile_ou_la_cuisse/screens/Menu/Menu-state.dart';

// Bloc class that receives the different Menu events
// It will handle the logic and output a state that will redefine the menu UI
class MenuBloc extends Bloc<MenuEvent, MenuState> {

  // UI state when the block is first created
  MenuState get initialState => MenuInitial();

  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {

    // We condition the state change to the pressing of the menu button
    if (event is MenuButtonPressed) {

    }
  }
}
