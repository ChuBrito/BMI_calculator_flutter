import 'package:bmi_calculator/constants.dart';
import 'RoundMaterialButton.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomFieldComponent extends StatelessWidget {
  final int parentState;
  final String textComponent;
  final Function plusHandler;
  final Function minusHandler;
  final double buttonSize;

  ButtomFieldComponent(this.textComponent, this.parentState, this.plusHandler,
      this.minusHandler, this.buttonSize);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          textComponent,
          style: kTextStyle,
        ),
        Text(
          parentState.toString(),
          style: kBigTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RoundMaterialButton(
              plusHandler,
              kBaseColor,
              FontAwesomeIcons.plusCircle,
              buttonSize,
              kTextColor,
            ),
            RoundMaterialButton(
              minusHandler,
              kBaseColor,
              FontAwesomeIcons.minusCircle,
              buttonSize,
              kTextColor,
            )
          ],
        ),
      ],
    );
  }
}
