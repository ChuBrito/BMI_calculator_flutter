import 'package:flutter/material.dart';
import '../constants.dart';

class GenderComponent extends StatelessWidget {
  final String genderLabel;
  final IconData genderIconType;
  GenderComponent(this.genderIconType, this.genderLabel);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.genderIconType,
          size: 60,
          color: kTextColor,
        ),
        Text(
          this.genderLabel,
          style: kTextStyle,
        )
      ],
    );
  }
}
