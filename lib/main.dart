import 'package:clone/views/LoginNum.dart';
import 'package:clone/views/login.dart';
import 'package:clone/views/register.dart';
import 'package:flutter/material.dart';

import 'views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
            Home.routeName: (context) => Home(),
            Login.routeName: (context) => Login(),
            LoginNum.routeName: (context) => LoginNum(),
            Register.routeName: (context) => Register(),
          }
    );
  }
}

