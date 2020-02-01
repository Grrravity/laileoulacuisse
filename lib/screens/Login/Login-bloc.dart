import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class LoginBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get login => _loginSubject.stream;
  Sink<String> get loginSink => _loginSubject.sink;
  final StreamController<String> _loginSubject = StreamController<String>();

  LoginBloc();

  void dispose() {
    _loginSubject.close();
  }
}