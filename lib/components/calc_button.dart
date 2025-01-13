import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback,
  });

  final String? text;
  final int? fillColor;
  final int textColor;
  final double textSize;
  final Function? callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        callback!(text);
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          fillColor != null ? Color(fillColor!) : null,
        ),
        foregroundColor: MaterialStateProperty.all(
          Color(textColor),
        ),
      ),
      child: Text(
        text ?? '',
        style: TextStyle(
          fontSize: textSize,
        ),
      ),
    );
  }
}
