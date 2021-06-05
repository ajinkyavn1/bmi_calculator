import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Color(0xFF0A0E21) ,
       primaryColor: Color(0xFF0A0E21)
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
