import 'package:flutter/material.dart';
import '../constants/constants.dart';

class NumberText extends StatelessWidget {
  int? passedNumber;

  NumberText({this.passedNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      passedNumber.toString(),
      style: kNumberLabelStyle,
    );
  }
}
