import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Menu/Menu-bloc.dart';
import 'package:laile_ou_la_cuisse/screens/Menu/components/body.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  MenuBloc menuBloc;

  @override
  void initState() {
    super.initState();

    menuBloc = MenuBloc();
  }

  @override
  void dispose() {
    menuBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: MenuBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu Screen"),
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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