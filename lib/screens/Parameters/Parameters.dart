import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Parameters/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Parameters/Parameters-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Parameters extends StatefulWidget {
  @override
  _ParametersState createState() => _ParametersState();
}

class _ParametersState extends State<Parameters> {
  ParametersBloc parametersBloc;

  @override
  void initState() {
    super.initState();

    parametersBloc = ParametersBloc();
  }

  @override
  void dispose() {
    parametersBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: ParametersBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Parameters Screen"),
        ),
        body: Body(),
      ),
    );
  }
}