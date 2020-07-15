import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import './results.dart';
import '../mainCalculator.dart';
import '../Components/basicFieldComponent.dart';
import '../Components/genderComponent.dart';
import '../Components/buttomFieldComponent.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  UserGender userGender;
  int userHeight = 160;
  int userWeight = 50;
  int userAge = 18;

  changeGender(UserGender gender) {
    setState(() {
      userGender = gender;
    });
  }

  addWeight() {
    setState(() {
      if (userWeight > 10 && userWeight < 300) {
        userWeight++;
      }
    });
  }

  removeWeight() {
    setState(() {
      if (userWeight > 10 && userWeight < 300) {
        userWeight--;
      }
    });
  }

  addAge() {
    setState(() {
      if (userAge >= 1 && userAge <= 119) {
        userAge++;
      }
    });
  }

  removeAge() {
    setState(() {
      if (userAge >= 2 && userAge <= 120) {
        userAge--;
      }
    });
  }

  popError() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            backgroundColor: kBackgroundColor,
            title: Text(
              'Please Choose a Gender',
              style: kTextStyle,
            ),
            content: null,
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  nextScreen() {
    MainCalculator calc = MainCalculator(userHeight, userWeight);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Results(
          calc.statusGenerator(),
          calc.bMICalculator(),
          calc.messageGenerator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                BasicFieldComponent(
                  userGender == UserGender.any ? kActiveColor : kInactiveColor,
                  GenderComponent(FontAwesomeIcons.transgender, 'Any'),
                  () {
                    changeGender(UserGender.any);
                  },
                ),
                BasicFieldComponent(
                  userGender == UserGender.female
                      ? kActiveColor
                      : kInactiveColor,
                  GenderComponent(FontAwesomeIcons.venus, 'Female'),
                  () {
                    changeGender(UserGender.female);
                  },
                ),
                BasicFieldComponent(
                  userGender == UserGender.male ? kActiveColor : kInactiveColor,
                  GenderComponent(FontAwesomeIcons.mars, 'Male'),
                  () {
                    changeGender(UserGender.male);
                  },
                ),
              ],
            ),
          ),
          BasicFieldComponent(
              kBaseColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        (userHeight.toString()),
                        style: kBigTextStyle,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 20,
                          color: kTextColor,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Color(0xffff9b3c),
                      inactiveTrackColor: Color(0xffece0d4),
                      thumbColor: Color(0xffe48628),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Color(0x23FF7B00),
                    ),
                    child: Slider(
                        value: userHeight.roundToDouble(),
                        min: 130,
                        max: 250,
                        onChanged: (double value) {
                          setState(() {
                            userHeight = value.round();
                          });
                        }),
                  )
                ],
              ),
              () {}),
          Flexible(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                BasicFieldComponent(
                  kBaseColor,
                  ButtomFieldComponent(
                    'Weight',
                    userWeight,
                    () {
                      addWeight();
                    },
                    () {
                      removeWeight();
                    },
                    40.0,
                  ),
                  () {},
                ),
                BasicFieldComponent(
                  kBaseColor,
                  ButtomFieldComponent(
                    'Age',
                    userAge,
                    () {
                      addAge();
                    },
                    () {
                      removeAge();
                    },
                    40.0,
                  ),
                  () {},
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: FlatButton(
                color: Color(0xE023435A),
                onPressed: () {
                  userGender != null ? nextScreen() : popError();
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
    );
  }
}
