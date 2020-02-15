import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Receipts/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Receipts/Receipts-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Receipts extends StatefulWidget {
  @override
  _ReceiptsState createState() => _ReceiptsState();
}

class _ReceiptsState extends State<Receipts> {
  ReceiptsBloc receiptsBloc;

  @override
  void initState() {
    super.initState();

    receiptsBloc = ReceiptsBloc();
  }

  @override
  void dispose() {
    receiptsBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: ReceiptsBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Receipts Screen"),
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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