import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

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

            // Logo + app name
            Expanded(
              flex: 4,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Image.asset(
                    'assets/qj.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 12,),
                  Text(
                    '1 CV 1 Job',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.grey[900],
                      fontFamily: 'Nunito Bold',
                    ),
                  ),
                ],
              ),
            ),

            // Subtitle
            Expanded(
              flex: 1,
              child: Text(
                'by Quickjobs.fr',
                style: TextStyle(
                  fontSize: 12.0,
                  color : Colors.grey[600],
                  fontFamily: 'Nunito',
                ),
              ),
            ),

            // image
            Expanded(
              flex: 24,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 12.0),
                child: Image.asset(
                  'assets/mobile_first_screen.png',
                ),
              ),
            ),

            // Login Btn
            Expanded(
              flex: 4,
              child: Container(
                width: 300,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Login");
                  },
                  child: Text(
                    'Me connecter',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'Nunito'
                    ),
                  ),
                ),
              ),
            ),

            // Register Btn
            Expanded(
              flex: 4,
              child: Container(
                width: 300,
                margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Register");
                  },
                  child: Text(
                    'Créer mon compte',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Nunito'
                    ),
                  ),
                ),
              ),
            ),

          ],

        ),
      ),

    );
  }
}