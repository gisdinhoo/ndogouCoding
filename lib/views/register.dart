import 'package:clone/views/widgets/buttonText.dart';
import 'package:clone/views/widgets/header.dart';
import 'package:clone/views/widgets/textEntry.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);
  static final String routeName = "/register";

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
                  text: "Inscrivez-vous",
                ),
                TextEntry("Prénom & Nom", false),
                SizedBox(
                  height: 20,
                ),
                TextEntry("Adresse mail", false),
                SizedBox(
                  height: 20,
                ),
                TextEntry("Mot de passe", true),
                SizedBox(
                  height: 20,
                ),
                TextEntry("Confirmer votre mot de passe", true),
                SizedBox(
                  height: 40,
                ),
                ButtonText(
                    textColor: Colors.white,
                    borderColor: Colors.transparent,
                    bgColor: Color(0xff11BD9E),
                    width: double.infinity,
                    onPress: () {},
                    text: "S'inscrire"),
                SizedBox(
                  height: 65,
                ),
                Material(
                  child: InkWell(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: "Déjà inscrit ? ", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Se connecter",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
                    ])),
                    onTap: (){
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
