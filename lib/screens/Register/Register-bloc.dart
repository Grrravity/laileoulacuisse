import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class RegisterBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get register => _registerSubject.stream;
  Sink<String> get registerSink => _registerSubject.sink;
  final StreamController<String> _registerSubject = StreamController<String>();

  RegisterBloc();

  void dispose() {
    _registerSubject.close();
  }
}