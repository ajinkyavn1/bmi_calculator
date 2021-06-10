
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a=50.0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.mars,color: Colors.white,size:55,),
                          15.heightBox,
                          "Male".text.xl2.make()
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.venus,color: Colors.white,size:55,),
                          15.heightBox,
                          "Female".text.xl2.make()
                        ],
                      ),
                    ),
                  ),
                                  ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "${a} CM".text.bold.xl2.make(),
                    Slider(
                      onChanged: (value){

                        a=value;
                        a=a.toInt() as double;
                        setState(() {
                        });
                      },
                      value:a,
                      max: 250,

                    ),
                  ],
                )
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Age".text.bold.make(),
                          Row(
                            children: [
                              Icon(Icons.add),
                              "0".text.white.bold.make()
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10)
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

