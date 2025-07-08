import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BmiResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
       Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,
        ),
        ),
        title: Text(
          'BMI Result',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
