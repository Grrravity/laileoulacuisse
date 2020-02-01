import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : ReceiptsActivity(),
));

class ReceiptsActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L\'aile ou la cuisse'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/menu');
          },
              icon: Icon(Icons.restaurant_menu),
              label: Text('Go to menu')),
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