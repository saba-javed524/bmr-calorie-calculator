import 'package:flutter/material.dart';

class ArrowButtons extends StatelessWidget {
  void Function()? onPressedUp;
  void Function()? onPressedDown;

  ArrowButtons({this.onPressedUp, this.onPressedDown});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressedUp,
          child: const Icon(
            Icons.arrow_circle_up,
            size: 40.0,
            color: Colors.teal,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: onPressedDown,
          child: const Icon(
            Icons.arrow_circle_down,
            size: 40.0,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
