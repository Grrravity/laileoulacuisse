import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class SettingsBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get settings => _settingsSubject.stream;
  Sink<String> get settingsSink => _settingsSubject.sink;
  final StreamController<String> _settingsSubject = StreamController<String>();

  SettingsBloc();

  void dispose() {
    _settingsSubject.close();
  }
}