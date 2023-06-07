import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Toggle extends StatelessWidget {
  int? toggleIndex;
  Toggle({this.toggleIndex});

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minHeight: 50,
      minWidth: 50,
      totalSwitches: 2,
      initialLabelIndex: toggleIndex,
      icons: [Icons.male, Icons.female],
      activeFgColor: Colors.white,
      inactiveFgColor: Colors.white,
      activeBgColors: [
        [Colors.indigo, Colors.blue, Colors.lightBlue, Colors.indigo],
        [Colors.orange, Colors.pink, Colors.pink.shade400, Colors.orange]
      ],
      inactiveBgColor: Colors.grey,
      animate: true,
      curve: Curves.easeInCirc,
      onToggle: (index) {
        toggleIndex = index;
        print(toggleIndex);
      },
    );
  }
}
