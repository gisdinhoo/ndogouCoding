import 'package:flutter/material.dart';

class TextEntry extends StatelessWidget {
  @required
  final _text, _state;

  const TextEntry(this._text, this._state);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffF1F1F1))),
      child: TextField(
        autofocus: true,
        cursorColor: Color(0xff11BD9E),
        obscureText: _state,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.transparent,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.transparent,
          )),
          hintText: _text,
        ),
      ),
    );
  }
}
