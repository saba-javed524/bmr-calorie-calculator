import 'package:bmr_calculator/Screens/input_page.dart';
import 'package:bmr_calculator/screens/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMRCalculator());
}

class BMRCalculator extends StatelessWidget {
  const BMRCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFf2f2f2),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        'result': (context) => Result(),
      },
    );
  }
}
