import 'package:flutter/material.dart';

//colors
const Color kInactiveColor = Color(0xFF5d707e);
const Color kActiveColor = Color(0xFF44647b);
const Color kTextColor = Color(0xfff0f0f0);
const Color kBackgroundColor = Color(0xff425867);
const Color kBaseColor = Color(0xff536d7f);
const Color kHighlightColor = Color(0xFFD38209);

//styles
const TextStyle kTextStyle = TextStyle(color: kTextColor, fontSize: 20);
const TextStyle kBigTextStyle = TextStyle(color: kTextColor, fontSize: 60);
const TextStyle kXLTextStyle = TextStyle(color: kTextColor, fontSize: 150);
const TextStyle kSecondTextStyle = TextStyle(color: kTextColor, fontSize: 50);
const TextStyle kHighlightTextStyle =
    TextStyle(color: kHighlightColor, fontSize: 20);

//enuns
enum UserGender { male, female, any }
enum UserStatus { normal, underweight, overweight }
