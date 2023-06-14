import 'dart:math';

import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../bmi_result/bmi_result.dart';

class bmi_screen extends StatefulWidget {
  const bmi_screen({Key? key}) : super(key: key);

  @override
  State<bmi_screen> createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  bool isMale = true;
  double height=120;
  int age=10;
  int weight=50;
  double? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
          Center(
            child: Text(
                'BMI Calculator',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState(() {
                          isMale=true;
                        });

                      } ,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage('assests/images/male.png'),
                              height: 80.0,
                              width: 80.0,
                            ),
                            SizedBox(
                              height:15.0
                              ,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.grey : Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale =false;

                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage('assests/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height:15.0
                              ,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:!isMale?Colors.grey:Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max:220.0,
                      min:80.0,
                      activeColor: Colors.black,
                      inactiveColor:Colors.grey[500],
                      onChanged:(value){
                        print(value.round());
                        setState(() {
                          height=value;
                        });
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:Colors.grey[300],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'Age',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '${age.round()}',
                           style: TextStyle(
                             fontSize: 40.0,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(

                               onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },
                               heroTag: 'age-',
                               mini: true,
                               backgroundColor: Colors.black,
                               child: Icon(
                                 Icons.remove,
                               ),

                             ),
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   age++;
                                 });
                               },
                               heroTag: 'age-',
                               mini: true,
                               backgroundColor: Colors.black,
                               child: Icon(
                                 Icons.add,
                               ),

                             ),
                           ],
                         ),
                       ],
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
                       color:Colors.grey[200],
                     ),
                   ),
                 ),
                 SizedBox(
                   width:20.0,
                 ),
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'Weight',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '${weight.round()}',
                           style: TextStyle(
                             fontSize: 40.0,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight--;
                                 });
                               },
                               heroTag: 'weight-',
                               mini: true,
                               backgroundColor: Colors.black,
                               child: Icon(
                                 Icons.remove,
                               ),

                             ),
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight++;
                                 });
                               },
                               heroTag: 'weight+',
                               mini: true,
                               backgroundColor: Colors.black,
                               child: Icon(
                                 Icons.add,
                               ),

                             ),
                           ],
                         ),
                       ],
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
                       color:Colors.grey[200],
                     ),
                   ),
                 ),
                ],
              ),
            ),
          ),
          defaultButton(
            context: context,
            buttom_name: 'Calculate',
            type_login: false,
            type_Calc: true,
            background: Colors.grey[200],
            text_color: Colors.black,
            text_size:20,
            function: (){},
            next_screen: bmi_result(
              age: age,
              weight:weight,
              isMale: isMale ,
              result: result?.round(),
              height: height.round(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
