import 'package:alcohol_or_gasoline/constants.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String label;

  Label({ @required this.label });

  @override
  Widget build(BuildContext context) {
      return Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
              this.label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: FONT_BIG_SHOULDERS
              )
          )
      );
  }
}