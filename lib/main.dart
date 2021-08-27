import 'package:flutter/material.dart';
import 'package:untitled/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0e21),
          scaffoldBackgroundColor: Color(0xFF0a0E21),
          textTheme: TextTheme(
              bodyText1: TextStyle(
            color: Colors.white,
          ))),
      home: MyHomePage(),
    );
  }
}
