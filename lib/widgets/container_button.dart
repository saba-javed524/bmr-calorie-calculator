import 'package:bmr_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  String? buttonLabel;
  IconData? buttonIcon;
  Color? activityButtonColor;
  void Function()? onPressedActivityLevel;

  ContainerButton(
      {this.buttonLabel,
      this.buttonIcon,
      this.activityButtonColor,
      this.onPressedActivityLevel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedActivityLevel,
      child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        padding: const EdgeInsets.all(10.0),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: activityButtonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonLabel!,
              style: kLabelStyle.copyWith(color: Colors.white),
            ),
            const SizedBox(width: 10.0),
            Icon(
              buttonIcon,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
