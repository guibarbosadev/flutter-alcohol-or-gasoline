import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  final String result;
  final Function reset;

  Success({
    @required this.result,
    @required this.reset,   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(10),
      child: Text(
        result,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontFamily: "Big Shoulders Display"
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
