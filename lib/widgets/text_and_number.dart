import 'package:bmr_calculator/constants/constants.dart';
import 'package:bmr_calculator/widgets/label_text.dart';
import 'package:bmr_calculator/widgets/number_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAndNumber extends StatelessWidget {
  String? label;
  int? passedNumber;

  TextAndNumber({this.label, this.passedNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextLabel(
          textLabel: label,
        ),
        NumberText(
          passedNumber: passedNumber,
        )
      ],
    );
  }
}
