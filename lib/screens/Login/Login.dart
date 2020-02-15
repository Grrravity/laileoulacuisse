import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-bloc.dart';
import 'package:laile_ou_la_cuisse/models/User.dart';
import 'package:laile_ou_la_cuisse/screens/Login/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Login/Login-bloc.dart';

class Login extends StatefulWidget {
  final User user;

  Login({
    Key key,
    @required this.user
})
      : assert (user != null),
      super(key:key);


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            user: widget.user,
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
          );
        },
        child: Body(),
      ),
    );
  }
}