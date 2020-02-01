import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class RecipeBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get recipe => _recipeSubject.stream;
  Sink<String> get recipeSink => _recipeSubject.sink;
  final StreamController<String> _recipeSubject = StreamController<String>();

  RecipeBloc();

  void dispose() {
    _recipeSubject.close();
  }
}