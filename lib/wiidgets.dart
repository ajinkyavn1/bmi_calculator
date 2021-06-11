import 'package:flutter/material.dart';

class FloatingAction extends StatelessWidget {
final IconData icon;
final Function pressed;
 FloatingAction({this.icon, this.pressed});
  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      onPressed:pressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50
      ),
    );
  }
}
