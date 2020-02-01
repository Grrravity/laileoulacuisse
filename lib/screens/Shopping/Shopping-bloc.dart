import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class ShoppingBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get shopping => _shoppingSubject.stream;
  Sink<String> get shoppingSink => _shoppingSubject.sink;
  final StreamController<String> _shoppingSubject = StreamController<String>();

  ShoppingBloc();

  void dispose() {
    _shoppingSubject.close();
  }
}