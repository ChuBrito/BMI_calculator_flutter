import 'package:flutter/material.dart';

class BasicFieldComponent extends StatelessWidget {
  final Color bgColor;
  final Function onTapFunc;
  final Widget childComponent;

  BasicFieldComponent(this.bgColor, this.childComponent, this.onTapFunc);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: onTapFunc,
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: childComponent,
        ),
      ),
    );
  }
}
