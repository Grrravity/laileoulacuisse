import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:laile_ou_la_cuisse/screens/Dashboard/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Dashboard/Dashboard-bloc.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);

    return Scaffold(
      body: BlocProvider<DashboardBloc>(
        create: (context){
          return DashboardBloc();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "L'aile ou la cuisse ?",
                textAlign: TextAlign.center,
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Theme.of(context).primaryColorLight,Theme.of(context).primaryColor])),
            ),
            leading: Icon(
              Icons.fastfood,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {//Navigator.pushNamed(context, "/Livingroom/settings");
                },
              ),
            ],

          ),
          body: Body(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Salon'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.room_service),
                title: Text('Recettes'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text('Menu'),
              ),
            ],
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}