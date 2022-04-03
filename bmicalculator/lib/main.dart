import 'package:bmicalculator/InputPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData.dark().copyWith(
       primaryColor: Color(0xFF0F0F1C),
       scaffoldBackgroundColor: Color(0xFF0F0F1C),
     ), 
     debugShowCheckedModeBanner: false, 
      home: InputPage(
      ),
      
    );
  }
}

