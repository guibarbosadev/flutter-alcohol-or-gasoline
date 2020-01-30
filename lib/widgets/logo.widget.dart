import 'package:alcohol_or_gasoline/constants.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 60),
        Image.asset(
          'assets/images/aog-white.png',
          height: 80,
        ),
        SizedBox(height: 10),
        Text(
          'Alcohol or Gasoline?',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontFamily: FONT_BIG_SHOULDERS,
              fontSize: 30),
        )
      ],
    );
  }
}
