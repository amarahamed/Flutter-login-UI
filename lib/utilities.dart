import 'package:flutter/material.dart';

var scaffoldGraadient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(0, 16, 120, 0.9),
      Color.fromRGBO(0, 16, 120, 0.6),
      Color.fromRGBO(0, 16, 120, 0.5),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    tileMode: TileMode.clamp,
  ),
);

const largeTextStyle = TextStyle(
  fontSize: 42,
  fontFamily: 'Montserrat',
  color: Colors.white,
);

const mediumTextStyle = TextStyle(
  fontSize: 20,
  fontFamily: 'Montserrat',
  color: Colors.white,
  letterSpacing: 1.2,
);

var textFieldDecoration = InputDecoration(
  fillColor: Color(0xFFEFEFEF).withOpacity(0.9),
  filled: true,
  border: InputBorder.none,
  contentPadding: EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 14,
  ),
  hintStyle: TextStyle(
    fontSize: 18,
    fontFamily: 'Montserrat',
  ),
);

const inputTextStyle = TextStyle(
  fontSize: 18,
  fontFamily: 'Montserrat',
  color: Colors.black54,
);

const linkTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'Montserrat',
);
const bottomlinkTextStyle = TextStyle(
  fontSize: 13,
  fontFamily: 'Montserrat',
  color: Color(0xFF4C5AA6),
);
