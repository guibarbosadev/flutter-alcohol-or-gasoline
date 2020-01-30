import 'package:alcohol_or_gasoline/constants.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;

  Input({ @required this.controller });
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: this.controller,
      style: TextStyle(
          color: Colors.white,
          fontSize: 45,
          fontFamily: FONT_BIG_SHOULDERS
      ),
      decoration: InputDecoration(border: InputBorder.none),
    );
  }
}
