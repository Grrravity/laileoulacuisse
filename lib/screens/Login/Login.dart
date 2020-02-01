import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Login/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Login/Login-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginBloc loginBloc;

  @override
  void initState() {
    super.initState();

    loginBloc = LoginBloc();
  }

  @override
  void dispose() {
    loginBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: LoginBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Body(),
      ),
    );
  }
}