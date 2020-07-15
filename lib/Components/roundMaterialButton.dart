import 'package:flutter/material.dart';

class RoundMaterialButton extends StatelessWidget {
  final Function onPressFunc;
  final Color bgColor;
  final Color fontColor;
  final double fontSize;
  final IconData iconData;

  RoundMaterialButton(
    this.onPressFunc,
    this.bgColor,
    this.iconData,
    this.fontSize,
    this.fontColor,
  );

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 10,
      constraints: BoxConstraints(minWidth: 0, minHeight: 0),
      onPressed: onPressFunc,
      shape: CircleBorder(),
      fillColor: bgColor,
      child: Icon(
        iconData,
        size: fontSize,
        color: fontColor,
      ),
    );
  }
}
