import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/theme/style.dart';

import '../../../strings.dart';


class Body extends StatelessWidget {

  int randString = Random().nextInt(10-0);
  List<String> loadStrings =[
    "Loading String #1 g uyi g_o guih uh uh huo huihuiui ",
    "Loading String #2 guyk _o loppopo johy urer-è giul i àç_uuy uit yg",
    "Loading String #3 ioiuhukgy kguhi",
    "Loading String #4 Luhkgolu uhilh  hihiuhuih uihui ",
    "Loading String #5",
    "Loading String #6",
    "Loading String #7 yçihl huilh uiolhçilhuilhoç _hçp ầjç_ol _huyjg gyuk fj jyug",
    "Loading String #8 Loading String #8 ",
    "Loading String #9  igyiu kgy",
    "Loading String #10 iu ghj i",
  ];


  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Theme.of(context).primaryColorLight, Theme.of(context).primaryColor])),

        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.01, vertical: deviceHeight * 0.02),
        child: Row(
          children: <Widget>[

            Expanded(
              flex: 1,
              child: SizedBox()),

            Expanded(
              flex: 8,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[

                  // Logo + app name
                  Container(
                    height: deviceHeight * 0.35,
                    //width: deviceWidth * 0.4,
                    child: Image.asset(
                        'assets/round_lolc.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, deviceHeight * 0.01, 0, deviceHeight * 0.2),
                    height: deviceHeight * 0.05,
                    child: AutoSizeText(
                      'L\'aile ou la cuisse',
                      style: TextStyle(
                        fontSize: 50.0,
                        //color: Colors.black,
                        fontFamily: 'Nunito Bold',
                      ),
                      minFontSize: 12,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    height: deviceHeight * 0.05,
                    child: AutoSizeText(
                     '${loadStrings[randString]}',
                      style: Theme.of(context).textTheme.body2,
                      minFontSize: 8,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),

                  ),

                  // Login continue
                  Container(
                    // width: deviceWidth * 0.5,
                    height: deviceHeight * 0.05,
                    margin: EdgeInsets.fromLTRB(0, deviceHeight * 0.1, 0, 0),
                    child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Livingroom");
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.005, vertical: deviceHeight*0.005),
                        child: AutoSizeText(
                          'Aller en cuisine',
                          style: Theme.of(context).textTheme.body1,
                          minFontSize: 8,
                          maxLines: 1,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Theme.of(context).accentColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: SizedBox()),
          ],
        ),
      ),

    );
  }
}