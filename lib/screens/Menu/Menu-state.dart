import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


abstract class MenuState extends Equatable {

  const MenuState();

  // Making the class equatable
  // TODO: Aren't the states classes missing the override as well?
  @override
  List<Object> get props => [];
}

// The initital, inactive state of the Menu
class MenuInitial extends MenuState {}

// TODO: Menu valid / invalid ?
// To check for the validity of the input ?

// The data have been input in the menu form
class MenuLoading extends MenuState {}
class MenuSuccess extends MenuState {}

// TODO: LoadingLoaded
// Where is the finished menu state, without error?

// The menu is done loading and got an error
class MenuFailure extends MenuState {

  final String error;

  const MenuFailure({@required this.error});
}