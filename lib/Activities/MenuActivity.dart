import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : MenuActivity(),
));

class MenuActivity extends StatelessWidget {
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
            Navigator.pushNamed(context, '/shopping');
          },
              icon: Icon(Icons.shopping_cart),
              label: Text('Go to shopping')),
        ],
      ),
    );
  }
}