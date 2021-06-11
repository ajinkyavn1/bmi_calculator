import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class ResultPage extends StatelessWidget {

  final Color color;
  final String suggestion;
  final String BMIresult;
  final String interpitation;
  const ResultPage({this.color,@required this.suggestion,@required this.BMIresult,@required this.interpitation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:"BMI Result".text.bold.center.make(),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:Container(
                child: "Your Result".text.xl5.make(),
              )
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  "Normal".text.xl4.bold.color(Colors.green).make(),
                  "18".text.xl6.bold.make(),
                  "Your BMI Result is quite Low,You Shoud Eat More!".text.center.xl4.make(),
                ],
              )
              ),
            ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.deepPurple,
              ),
              height: 80,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,

              child: "Re-Calculate".text.center.xl5.bold.make(),
            ),
          ),
        ],
      ),
    );
  }
}
