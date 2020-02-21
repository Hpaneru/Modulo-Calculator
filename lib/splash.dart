import 'package:flutter/material.dart';
// import 'package:modulocalculator/screen_modulo.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(child: CircularProgressIndicator()),
      ),
    );
         
  }
}