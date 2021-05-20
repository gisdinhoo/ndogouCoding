import 'package:clone/views/widgets/buttonText.dart';
import 'package:clone/views/widgets/header.dart';
import 'package:clone/views/widgets/textEntry.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);
  static final String routeName = "/login";

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
                TextEntry("Adresse mail", false),
                SizedBox(
                  height: 23,
                ),
                TextEntry("Mot de passe", true),
                SizedBox(
                  height: 11,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text("Mot de passe oublié ?"),
                  ),
                ),
                SizedBox(
                  height: 25,
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
                      Navigator.pushNamed(context, "/loginNum");
                    },
                    text: "Se connecter avec un numéro"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
