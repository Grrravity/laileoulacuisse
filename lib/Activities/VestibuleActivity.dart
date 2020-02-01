import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : VestibuleActivity(),
));

class VestibuleActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'L\'aile ou la cuisse',
          textAlign: TextAlign.center,),
        ),
      body: Container(
        margin: EdgeInsets.fromLTRB(22, 12, 22, 12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
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
                width: 200,
                child: Center(
                  child: Text(
                    'Créez vos recettes et vos menus, on s\’occupe des courses ;)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 28,),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
                child: Text('Connection'),
              ),
              SizedBox(height: 28,),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Register');
                },
                child: Text('Inscription'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}