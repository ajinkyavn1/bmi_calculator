import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:"BMI Result".text.bold.center.make(),),
    );
  }
}
