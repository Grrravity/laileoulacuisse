import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class LivingRoomBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get livingRoom => _livingRoomSubject.stream;
  Sink<String> get livingRoomSink => _livingRoomSubject.sink;
  final StreamController<String> _livingRoomSubject = StreamController<String>();

  LivingRoomBloc();

  void dispose() {
    _livingRoomSubject.close();
  }
}