import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ToolTipWidget extends StatelessWidget {
  String? toolTipMessage;
  double? iconSize;

  ToolTipWidget({this.toolTipMessage, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTipMessage,
      textStyle: kLabelStyle.copyWith(color: Colors.white),
      triggerMode: TooltipTriggerMode.tap,
      child: Icon(
        Icons.info_outline,
        color: Colors.teal,
        size: iconSize,
      ),
    );
    ;
  }
}
