import 'package:bmr_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  void Function()? onPressed;
  String? buttonTitle = ' ';

  CalculateButton({this.buttonTitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 300,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.teal, borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          buttonTitle!,
          textAlign: TextAlign.center,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
