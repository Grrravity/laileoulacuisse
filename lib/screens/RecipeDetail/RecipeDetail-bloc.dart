import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class ReceiptsBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get receipts => _receiptsSubject.stream;
  Sink<String> get receiptsSink => _receiptsSubject.sink;
  final StreamController<String> _receiptsSubject = StreamController<String>();

  ReceiptsBloc();

  void dispose() {
    _receiptsSubject.close();
  }
}