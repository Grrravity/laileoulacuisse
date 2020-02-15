import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


abstract class FirstState extends Equatable {
  const FirstState();

  @override
  List<Object> get props => [];

}

class FirstInitial extends FirstState {}
class FirstLoading extends FirstState {}
class FirstRegister extends FirstState {}


class FirstFailure extends FirstState {
  final String error;

  const FirstFailure({@required this.error});

}