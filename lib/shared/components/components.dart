import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
* background-> background Button
* text_color -> Change Text color of button's name
*
*
*
* */

Widget defaultButton({
  double width =double.infinity,
  Color? background,
  Color? text_color,
  double text_size= 10.0,
  var emailControler,
  var passControler,
  var result,
  var weight,
  var height,
  bool type_Calc=false,
  Widget? next_screen,
  bool? type_login=false,
  var buttom_name,
  required Function function,
  bool isupperCase =true,
  bool calc_bmi=false,
  context,

}) =>
    Container(
      width: 300,
      decoration: BoxDecoration(
        color:background,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: MaterialButton(
        onPressed:(){
          if(type_login==true){
            islogin(passControler,emailControler,context,next_screen);
          }
          else{
            Next_screen(context,next_screen);
          };
        },
        child: Text(
          '$buttom_name',
          style: TextStyle(
            color:text_color,
            fontSize:text_size,
          ),
        ),
      ),
    );
void islogin(passControler,emailControler,context,next_screen){
  print(emailControler.text);
  print(passControler.text);
  var email='ziad';
  var pass='123';
  if(emailControler.text==email&&passControler.text==pass)
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>next_screen));
  }
  else{
    print('ERROR');
  }
}
void Next_screen(context,next_screen){
  bool type_Calc=false;
  var result;
  var weight;
  var height;
  Function function;
    Navigator.push(context, MaterialPageRoute(builder: (context)=>next_screen));
  }

