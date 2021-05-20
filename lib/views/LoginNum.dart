import 'package:clone/views/widgets/buttonText.dart';
import 'package:clone/views/widgets/header.dart';
import 'package:clone/views/widgets/textEntry.dart';
import 'package:flutter/material.dart';

class LoginNum extends StatelessWidget {
  const LoginNum({Key key}) : super(key: key);
  static final String routeName = "/loginNum";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 36, left: 36),
            child: Column(
              children: [
                Header(
                  text: "Connectez-vous",
                ),
                TextEntry("Entrez votre numéro de téléphone", false),
                SizedBox(
                  height: 100,
                ),
                ButtonText(
                    textColor: Colors.white,
                    borderColor: Colors.transparent,
                    bgColor: Color(0xff11BD9E),
                    width: double.infinity,
                    onPress: () {},
                    text: "Se connecter"),
                SizedBox(
                  height: 19,
                ),
                ButtonText(
                    textColor: Colors.black,
                    borderColor: Color(0xff11BD9E),
                    bgColor: Colors.white,
                    width: double.infinity,
                    onPress: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    text: "Se connecter avec une adresse mail"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
