import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : RecipeActivity(),
));

class RecipeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recette'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/livingroom');
          },
              icon: Icon(Icons.room_service),
              label: Text('Go to recette')),
        ],
      ),
    );
  }
}