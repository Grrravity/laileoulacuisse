import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class ParametersBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get parameters => _parametersSubject.stream;
  Sink<String> get parametersSink => _parametersSubject.sink;
  final StreamController<String> _parametersSubject = StreamController<String>();

  ParametersBloc();

  void dispose() {
    _parametersSubject.close();
  }
}