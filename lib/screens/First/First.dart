import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Vestibule/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Vestibule/Vestibule-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Vestibule extends StatefulWidget {
  @override
  _VestibuleState createState() => _VestibuleState();
}

class _VestibuleState extends State<Vestibule> {
  VestibuleBloc vestibuleBloc;

  @override
  void initState() {
    super.initState();

    vestibuleBloc = VestibuleBloc();
  }

  @override
  void dispose() {
    vestibuleBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VestibuleBloc(),
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}