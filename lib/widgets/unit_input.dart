import 'package:flutter/material.dart';

class UnitInput extends StatelessWidget {
  String inputText;
  String unitCode;
  String borderColorValue;

  UnitInput(this.inputText, this.unitCode, this.borderColorValue);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade200,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        labelText: inputText,
      ),
    );
  }
}
