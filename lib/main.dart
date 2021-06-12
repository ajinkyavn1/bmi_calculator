import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Color(0xFF0A0E21) ,
       primaryColor: Color(0xFF0A0E21)
      ),
      home: MyHomePage(title: 'BMI Calculator'),
      initialRoute: "/main",
      routes:{
        "/main":(context)=>MyHomePage(title: 'BMI Calculator'),
        "/ResultPage":(context)=>ResultPage()
      },
    );
  }
}
