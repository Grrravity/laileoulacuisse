import 'package:flutter/widgets.dart';
import 'package:laile_ou_la_cuisse/screens/LivingRoom/LivingRoom.dart';
import 'package:laile_ou_la_cuisse/screens/Loading/Loading.dart';
import 'package:laile_ou_la_cuisse/screens/Login/Login.dart';
import 'package:laile_ou_la_cuisse/screens/Menu/Menu.dart';
import 'package:laile_ou_la_cuisse/screens/Parameters/Parameters.dart';
import 'package:laile_ou_la_cuisse/screens/Receipts/Receipts.dart';
import 'package:laile_ou_la_cuisse/screens/Recipe/Recipe.dart';
import 'package:laile_ou_la_cuisse/screens/Register/Register.dart';
import 'package:laile_ou_la_cuisse/screens/Shopping/Shopping.dart';
import 'package:laile_ou_la_cuisse/screens/Vestibule/Vestibule.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/'                      : (context) => Vestibule(),
  '/Login'                 : (context) => Login(),
  '/Register'              : (context) => Register(),
  '/Livingroom'            : (context) => LivingRoom(),
  '/Receipts'              : (context) => Receipts(),
  '/Menu'                  : (context) => Menu(),
  '/Shopping'              : (context) => Shopping(),
  '/Livingroom/parameters' : (context) => Parameters(),
  '/Receipts/recipe'       : (context) => Recipe(),
  '/...'                   : (context) => Loading(),
};