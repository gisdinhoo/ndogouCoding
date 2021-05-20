import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  @required
  final Color textColor, borderColor, bgColor;
  final String text;
  final double width;
  final Function onPress;
  const ButtonText(
      {this.textColor,
      this.borderColor,
      this.bgColor,
      this.text,
      this.width,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: bgColor,
          borderRadius: BorderRadius.circular(10)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onPress();
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
