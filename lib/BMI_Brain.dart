import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';
class BMIBrain{
  final int Weight;
  final double height;
  double _BMI;
  BMIBrain(@required this.Weight,@required this.height);
  CalculateBMI(){
    _BMI=Weight/pow(height/100,2);
    return _BMI.toStringAsFixed(1);
  }
  getResult(){
    if(_BMI>=25)
      {
        return "OverWeight";
      }else if(_BMI>18.5 && _BMI<25)
        {
          return "Normal";
        }else{
      return "Under Weight";
    }
  }
  getInterpitation(){
    if(_BMI>=25)
    {
      return "You are higher than body please exsercise more";
    }else if(_BMI>18.5 && _BMI<25)
    {
      return "You have Normal Body weight. Good job!";
    }else{
      return "You have lower than Normal body weight. you can eat a bit more";
    }
  }
  getColor(){
    if(_BMI>=25)
    {
      return Colors.red;
    }else if(_BMI>18.5 && _BMI<25)
    {
      return Colors.green;;
    }else{
      return Colors.blueAccent;
    }
  }

}