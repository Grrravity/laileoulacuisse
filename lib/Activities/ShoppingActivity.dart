import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : ShoppingActivity(),
));

class ShoppingActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L\'aile ou la cuisse'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/receipts');
          },
              icon: Icon(Icons.receipt),
              label: Text('Go to receipts')),
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/menu');
          },
              icon: Icon(Icons.restaurant_menu),
              label: Text('Go to menu')),
        ],
      ),
    );
  }
}