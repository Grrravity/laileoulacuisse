import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Settings/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Settings/Settings-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  SettingsBloc settingsBloc;

  @override
  void initState() {
    super.initState();

    settingsBloc = SettingsBloc();
  }

  @override
  void dispose() {
    settingsBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: SettingsBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings Screen"),
        ),
        body: Body(),
      ),
    );
  }
}