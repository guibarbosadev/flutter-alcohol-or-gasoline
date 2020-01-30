import 'package:alcohol_or_gasoline/widgets/input.widget.dart';
import 'package:alcohol_or_gasoline/widgets/label.widget.dart';
import 'package:flutter/material.dart';

/// Combines a label and a input */
class InputField extends StatelessWidget {
  final String label;
  final TextEditingController inputController;
  
  InputField({
      @required this.label,
      @required this.inputController
  });

  @override
  Widget build(BuildContext context) {
      return Row(
          children: <Widget>[
              Label(label: this.label),
              Expanded(
                  child: Input(controller: this.inputController),
              )
          ],
      );
  }
}