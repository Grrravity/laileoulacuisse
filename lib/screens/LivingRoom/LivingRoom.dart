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
          title: Text("Living Room Screen"),
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.kitchen),
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
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Liste de course'),
            ),
          ],

        ),
      ),
    );
  }
}