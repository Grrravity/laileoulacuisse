import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Loading/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Loading/Loading-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  LoadingBloc loadingBloc;

  @override
  void initState() {
    super.initState();

    loadingBloc = LoadingBloc();
  }

  @override
  void dispose() {
    loadingBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: LoadingBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Loading Screen"),
        ),
        body: Body(),
      ),
    );
  }
}