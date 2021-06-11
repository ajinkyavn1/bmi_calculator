
import 'package:bmi_calculator/wiidgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

const activeColor=Color(0xFF1D1E33);
const inactiveColor=Color(0xFF111328);
enum Gender{male,female}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var Selectedgender=Gender.male;
  double a=130.0;
  var age=10;
  var Weight=10;
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
                    child: GestureDetector(
                      onTap: (){
                        Selectedgender=Gender.male;
                        setState(() {

                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Selectedgender==Gender.male?activeColor:inactiveColor,
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
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Selectedgender=Gender.female;
                        setState(() {

                        });
                        },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color:Selectedgender==Gender.female?activeColor:inactiveColor,
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
                    "HEIGHT".text.xl4.bold.make().p16(),
                    "${a} CM".text.bold.xl2.make(),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.red,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius:15.0,),
                        overlayShape: RoundSliderOverlayShape(overlayRadius:35)
                      ),
                      child: Slider(
                        onChanged: (double value){
                          a=value.roundToDouble();
                          setState(() {
                          });
                        },
                        value:a,
                        max: 250,
                        min: 120,

                      ),
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
                          "Weight".text.xl2.bold.make().p12(),
                          "${Weight}".text.xl5.bold.make(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingAction(
                                icon: Icons.add,
                                pressed: (){
                                  setState(() {
                                    Weight++;
                                  });
                                },
                              ),
                              16.widthBox,
                              FloatingAction(
                                icon: Icons.remove,
                                pressed: (){
                                  setState(() {
                                    Weight--;
                                    if(Weight<=0)
                                      {
                                        Weight=0;
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: "Baby Not Born".text.bold.italic.make(),));
                                      }
                                  });
                                },
                              )

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Age".text.xl2.bold.make().p12(),
                          "${age}".text.xl5.bold.make(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingAction(
                                icon: Icons.add,
                                pressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              16.widthBox,
                              FloatingAction(
                                icon: Icons.remove,
                              pressed: (){

                                  setState(() {
                                    age--;
                                    if(age<=0)
                                    {
                                      age=0;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: "Baby Not Born".text.bold.italic.make(),));
                                    }
                                  });
                              },
                              )

                            ],
                          )
                        ],
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

