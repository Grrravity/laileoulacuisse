import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Container(

        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.04, vertical: deviceHeight * 0.02),
        child: SingleChildScrollView(
          scrollDirection:  Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                // Logo + app name
                Container(
                  height: 250,
                  width: deviceWidth,
                  color: Theme.of(context).primaryColorLight,
                  margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.01, horizontal: 0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child : AutoSizeText(
                            'Article article article Article article articleArticle article article Article article article article articleArticle article article Article article article article articleArticle article article Article article article article articleArticle article article Article article article article articleArticle article article Article article article article articleArticle article article Article article article',
                            style: Theme.of(context).textTheme.body1,
                            minFontSize: 8,
                            maxLines: 5,
                          )
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.005, vertical: deviceHeight*0.005),
                            child: AutoSizeText(
                              'Article 1',
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
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: deviceWidth,
                  color: Theme.of(context).primaryColorDark,
                  margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.01, horizontal: 0),
                  child: OutlineButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.005, vertical: deviceHeight*0.005),
                      child: AutoSizeText(
                        'Article 1',
                        style: Theme.of(context).textTheme.body1,
                        minFontSize: 8,
                        maxLines: 1,
                      ),
                    ),
                    //shape: RoundedRectangleBorder(
                    //  borderRadius: new BorderRadius.circular(18.0),
                    //  side: BorderSide(
                    //    color: Theme.of(context).accentColor,
                    //    width: 2,
                    //  ),
                    //),
                  ),
                ),
                Container(
                  height: 250,
                  width: deviceWidth,
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.01, horizontal: 0),
                  child: OutlineButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.005, vertical: deviceHeight*0.005),
                      child: AutoSizeText(
                        'Article 1',
                        style: Theme.of(context).textTheme.body1,
                        minFontSize: 8,
                        maxLines: 1,
                      ),
                    ),
                    //shape: RoundedRectangleBorder(
                    //  borderRadius: new BorderRadius.circular(18.0),
                    //  side: BorderSide(
                    //    color: Theme.of(context).accentColor,
                    //    width: 2,
                    //  ),
                    //),
                  ),

                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}