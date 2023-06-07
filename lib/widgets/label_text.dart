import 'package:bmr_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  String? textLabel;

  TextLabel({this.textLabel});

  @override
  Widget build(BuildContext context) {
    return Text(
      textLabel!,
      style: kLabelStyle,
    );
  }
}
