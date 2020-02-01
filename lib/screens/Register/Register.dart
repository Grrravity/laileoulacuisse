import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Register/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Register/Register-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterBloc registerBloc;

  @override
  void initState() {
    super.initState();

    registerBloc = RegisterBloc();
  }

  @override
  void dispose() {
    registerBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: RegisterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register Screen"),
        ),
        body: Body(),
      ),
    );
  }
}