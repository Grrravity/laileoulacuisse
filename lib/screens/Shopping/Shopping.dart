import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Shopping/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Shopping/Shopping-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  ShoppingBloc shoppingBloc;

  @override
  void initState() {
    super.initState();

    shoppingBloc = ShoppingBloc();
  }

  @override
  void dispose() {
    shoppingBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: ShoppingBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shopping Screen"),
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
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