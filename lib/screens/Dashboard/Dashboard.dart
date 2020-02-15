import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/LivingRoom/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/LivingRoom/LivingRoom-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class LivingRoom extends StatefulWidget {
  @override
  _LivingRoomState createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  LivingRoomBloc livingRoomBloc;

  @override
  void initState() {
    super.initState();

    livingRoomBloc = LivingRoomBloc();
  }

  @override
  void dispose() {
    livingRoomBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: LivingRoomBloc(),
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
              onPressed: () {Navigator.pushNamed(context, "/Livingroom/parameters");},
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
    );
  }
}