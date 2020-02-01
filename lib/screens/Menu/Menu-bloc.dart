import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class MenuBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get menu => _menuSubject.stream;
  Sink<String> get menuSink => _menuSubject.sink;
  final StreamController<String> _menuSubject = StreamController<String>();

  MenuBloc();

  void dispose() {
    _menuSubject.close();
  }
}