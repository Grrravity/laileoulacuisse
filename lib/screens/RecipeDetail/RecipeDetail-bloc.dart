import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:laile_ou_la_cuisse/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc.dart';

class RecipeDetailBloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get recipeDetail => _recipeDetailSubject.stream;
  Sink<String> get recipeDetailSink => _recipeDetailSubject.sink;
  final StreamController<String> _recipeDetailSubject = StreamController<String>();

  RecipeDetailBloc();

  void dispose() {
    _recipeDetailSubject.close();
  }
}