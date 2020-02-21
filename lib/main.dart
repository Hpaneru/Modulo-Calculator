import 'package:flutter/material.dart';
import 'package:modulocalculator/screen_modulo.dart';
// import 'package:modulocalculator/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Modulo(),
    );
  }
}
