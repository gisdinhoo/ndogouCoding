import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image(
          image: AssetImage("./assets/logo.png"),
          height: 40,
          width: 40,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
