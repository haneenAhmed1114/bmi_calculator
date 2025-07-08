import 'dart:math';

import 'package:bmi_calculator/modules/bmi_result_screen.dart';
import 'package:bmi_calculator/shared/app_colors.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale = true ;
  double height = 120.0 ;
  int weight = 40 ;
  int age = 20 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
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
                      onTap: () {
                        setState(() {
                          isMale = true ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? AppColors.deepRedColor : AppColors.lightBlueColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 85,
                              color: Colors.white,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ? AppColors.deepRedColor : AppColors.lightBlueColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 85,
                              color: Colors.white,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:AppColors.lightBlueColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                        '${height.round()}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                    ],
                    ),
                    Slider(
                        value: height ,
                        min: 80.0,
                        max: 220.0,
                        activeColor: AppColors.deepRedColor,
                        onChanged: (value) {
                          setState(() {
                            height = value ;
                          });
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:AppColors.lightBlueColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             FloatingActionButton(
                               heroTag : 'weight-',

                               onPressed: () {
                                setState(() {
                                  weight--;
                                });
                             },
                               child: Icon(
                                   Icons.remove,
                               ),
                               mini: true,
                               backgroundColor: AppColors.deepRedColor,
                               foregroundColor: Colors.white,
                             ),
                              SizedBox(width: 10,),
                              FloatingActionButton(
                                heroTag : 'weight+',

                                onPressed: () {
                               setState(() {
                                 weight++;
                               });
                              },
                                child: Icon(Icons.add),
                                mini: true,
                                backgroundColor: AppColors.deepRedColor,
                                foregroundColor: Colors.white,
                              ),
                          ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:AppColors.lightBlueColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag : 'age-',
                                onPressed: () {
                               setState(() {
                                 age--;
                               });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                                backgroundColor: AppColors.deepRedColor,
                                foregroundColor: Colors.white,
                              ),
                              SizedBox(width: 10,),
                              FloatingActionButton(
                                heroTag : 'age+',
                                onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                              },
                                child: Icon(Icons.add),
                                mini: true,
                                backgroundColor: AppColors.deepRedColor,
                                foregroundColor: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: AppColors.deepRedColor,
            ),
            child: MaterialButton(onPressed: () {
              double result = weight / pow(height/ 100,2);
              //print(result.round());
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => BmiResultScreen(isMale: isMale,age: age,result: result,),
              ),
              );
            },
              child: Text(
                'Calculate',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),),
          ),
        ],
      ),
    );
  }
}
