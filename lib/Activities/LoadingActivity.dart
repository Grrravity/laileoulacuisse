import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : LoadingActivity(),
));

class LoadingActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L\'aile ou la cuisse'),
      ),
      body: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}