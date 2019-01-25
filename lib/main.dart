import 'package:flutter/material.dart';
import 'dart:async';

import 'background.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Color(0xFF202123),
    accentColor: Colors.yellowAccent
  ),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {

  @override
  SplashScreenState createState() => new SplashScreenState();

}

class SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => print("Splash Done!"));
  }
  
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage("assets/search.png");
    var image = new Image(image: assetsImage, width: 80.0, height: 80.0,);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
              colors: [
                Color(0xFF30343d),
                Color(0xFF202123)
              ],
            begin: const FractionalOffset(1.0, 0.1),
            end: const FractionalOffset(1.0, 0.9)
            )
          ),
            /*decoration: BoxDecoration(
              color: Color(0xFF202123),
            ),*/
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      image,
                      /*CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        //child: Icon(Icons.add), // ignore: not_enough_required_arguments
                      ),*/
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.0
                        ),
                      ),
                      Text(
                        "Autoencuentra",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /*CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),*/
                    Text(
                      "¡Un momento por favor!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      )
                  ],
                ),
              )
          ],)
        ],
      ),
    );
  }

}