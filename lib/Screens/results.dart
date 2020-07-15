import 'package:flutter/material.dart';
import '../constants.dart';

class Results extends StatelessWidget {
  final String status;
  final String bmi;
  final String message;

  const Results(
    this.status,
    this.bmi,
    this.message,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: kBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: kSecondTextStyle,
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kBaseColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        status,
                        style: kHighlightTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmi,
                        style: kXLTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        message,
                        style: kTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: FlatButton(
                  color: Color(0xE023435A),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Calculate',
                    textAlign: TextAlign.center,
                    style: kTextStyle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
