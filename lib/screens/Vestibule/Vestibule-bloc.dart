import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class VestibuleBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get vestibule => _vestibuleSubject.stream;
  Sink<String> get vestibuleSink => _vestibuleSubject.sink;
  final StreamController<String> _vestibuleSubject = StreamController<String>();

  VestibuleBloc();

  void dispose() {
    _vestibuleSubject.close();
  }
}