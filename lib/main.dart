import 'package:bmi_calculator/modules/bmi_screen.dart';
import 'package:bmi_calculator/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';


void main() {
  runApp(
   DevicePreview(
     enabled: true,
     builder: (context) => MyApp(),
   ),
  );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: AppTheme.lightTheme,
      home: BmiScreen(),
    );
  }
}