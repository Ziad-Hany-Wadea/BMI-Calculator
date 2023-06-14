import 'dart:math';

import 'package:bmi_calaulator/modules/bmi/bmi_screen.dart';
import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {
  final int? result;
  final bool? isMale;
  final int? age;
  final int? weight;
  final int? height;


  bmi_result({
    @required this.isMale,
    @required this.result,
    @required this.age,
    @required this.weight,
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 70,),
            Center(
              child: Text(
                  'BMI Resilt',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
              ),
            ),
          ],
        ),
        leading:  IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>bmi_screen()));
          },
          icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
              size: 25.0,
              color: Colors.black,
            ),
          ),
        ),

        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
      ),
      body:Center(
        child: Container(
          width: 350,
          height: 300,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0),
            color:  Colors.black,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text(
                  'Gander :${isMale! ? 'Male': 'Female'}',
                  style: TextStyle(
                   fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Age: ${age}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Weight: ${weight}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'height: ${height}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Result :${(weight!/pow(height!/100, 2)).round()}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),

    );
  }
}