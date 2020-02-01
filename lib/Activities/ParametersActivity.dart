import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : ParametersActivity(),
));

class ParametersActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/livingroom');
          },
              icon: Icon(Icons.kitchen),
              label: Text('Go to salon')),
        ],
      ),
    );
  }
}