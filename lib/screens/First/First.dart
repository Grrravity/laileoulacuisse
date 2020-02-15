//flutter
import 'package:flutter/material.dart';

//library
import 'package:flutter_bloc/flutter_bloc.dart';

//others
import 'package:laile_ou_la_cuisse/screens/First/First-bloc.dart';
import 'package:laile_ou_la_cuisse/screens/First/components/body.dart';


class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FirstBloc>(
        create: (context) {
          return FirstBloc();
        },
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}