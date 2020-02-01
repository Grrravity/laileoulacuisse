import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : LivingRoomActivity(),
));

class LivingRoomActivity extends StatefulWidget {
  @override
  _LivingRoomActivityState createState() => _LivingRoomActivityState();
}

class _LivingRoomActivityState extends State<LivingRoomActivity> {
  int _currentIndex = 0;
  final List<String> _navigate = [
    '/livingroom',
    '/receipts',
    '/menu',
    '/shopping',
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.pushReplacementNamed(context, '${_navigate[_currentIndex]}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/receipts');
          },
              icon: Icon(Icons.room_service),
              label: Text('Go to receipts')),
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/menu');
          },
              icon: Icon(Icons.book),
              label: Text('Go to menu')),
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/shopping');
          },
              icon: Icon(Icons.shopping_cart),
              label: Text('Go to shopping')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
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
              title: Text('Menu')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Liste de course'),
          ),
        ],
      ),
    );
  }
}