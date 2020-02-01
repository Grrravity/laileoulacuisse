import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class LoadingBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get loadingRoom => _loadingSubject.stream;
  Sink<String> get loadingSink => _loadingSubject.sink;
  final StreamController<String> _loadingSubject = StreamController<String>();

  LoadingBloc();

  void dispose() {
    _loadingSubject.close();
  }
}