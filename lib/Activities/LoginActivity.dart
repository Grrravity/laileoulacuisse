import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home: LoginActivity(),
    ));

class LoginActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Connection',
            textAlign: TextAlign.center,),
        ),
        body: Container(
        margin: EdgeInsets.fromLTRB(22, 12, 22, 12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox (
                  height: 80
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage('assets/round_lolc.png'),
                    ),
                  ),
                ),
                SizedBox(height: 28,),
                Container(
                  width: 150,
                  child: Center(
                    child: Text(
                      'votre email\r\nex: defunes@laileoulacuisse.com',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                Container(
                  width: 150,
                  child: Center(
                    child: Text(
                      'mot de passe',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 28,),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/livingroom');
                  },
                  child: Text('Connection'),
                ),
                SizedBox(height: 28,),
                  Container(
                    width: 190,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/...');
                      },

                      child: Text(
                        'Mot de passe oublié\r\n(je manque pas assez de poisson :\'( )',
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                SizedBox(height: 22,),
              ],
            ),
          ),
        ),
    );
  }
}