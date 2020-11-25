import 'dart:async';
import 'package:bmi_calculator/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'MainPage.dart';


void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => BmiCalculatur())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/icon.png', height: 250.0, width: 250,),

          SizedBox( height: 30.0),

          SpinKitRipple(color: Colors.red, size: 150.0, borderWidth: 10.0,),
        ],
      ),
    );
  }
}