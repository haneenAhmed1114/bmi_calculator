import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  BmiResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });

  String getResultMessage(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    }
    else if (bmi < 25) {
      return 'Normal';
    }
    else if (bmi < 30)
      {
        return 'Overweight';
      }
    else {
      return 'Obese';
    }
  }

  Color getStatusColor(double bmi) {
    if (bmi < 18.5)
      {
        return Colors.orangeAccent;
      } else if (bmi < 25)
        {
          return Colors.greenAccent;
        }

    else if (bmi < 30)
      {
        return Colors.yellowAccent;
      }
    else{
      return Colors.redAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900], // خلفية داكنة للشاشة كلها
      appBar: AppBar(
        backgroundColor: Colors.indigo[700],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'BMI Result',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
              SizedBox(height: 10),
              Text(
                'Age : $age',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'BMI : ${result.toStringAsFixed(1)}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: getStatusColor(result).withOpacity(0.15),
                  border: Border.all(
                    color: getStatusColor(result),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Status: ${getResultMessage(result)}',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: getStatusColor(result),
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        offset: Offset(2, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

