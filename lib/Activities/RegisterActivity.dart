import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : RegisterActivity(),
));

class RegisterActivity extends StatefulWidget {
  @override
  _RegisterActivityState createState() => _RegisterActivityState();
}

class _RegisterActivityState extends State<RegisterActivity> {
  bool lolc = true;
  bool lsoc = false;
  bool bdtv = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inscription',
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
                width: 180,
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
                width: 180,
                child: Center(
                  child: Text(
                    'votre mot de passe',
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
                width: 180,
                child: Center(
                  child: Text(
                    'répétez ? je suis dûr d\'oreille',
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
                width: 180,
                child: Center(
                  child: Text(
                    'Autre régime ?',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 18,),
              Text("L'aile ou la cuisse (aucun filtre)"),
              Checkbox(
                value: lolc,
                onChanged: (bool value) {
                  setState(() {
                    lsoc = !value;
                    bdtv = !value;
                    lolc = value;
                  });
                },
              ),
              Text("La soupe au choux (végétarien)"),
              Checkbox(
                value: lsoc,
                onChanged: (bool value) {
                  setState(() {
                    bdtv = !value;
                    lolc = !value;
                    lsoc = value;
                  });
                },
              ),
              Text("Begnets de tomates vertes (vegan)"),
              Checkbox(
                value: bdtv,
                onChanged: (bool value) {
                  setState(() {
                    lolc = !value;
                    lsoc = !value;
                    bdtv = value;
                  });
                },
              ),
              SizedBox(height: 28,),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/livingroom');
                },
                child: Text('M\'inscrire !'),
              ),
              SizedBox(height: 22,)
            ],
          ),
        ),
      ),
    );
  }
}