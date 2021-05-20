import 'package:flutter/material.dart';

import 'widgets/buttonText.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  static final String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("./assets/bg.png"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image(
                            image: AssetImage("./assets/hd.png"),
                            height: 60,
                            width: 57,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Writte(
                          text: "LANCER",
                        ),
                        Writte(
                          text: "VOTRE",
                        ),
                        Writte(
                          text: "CARRIERE",
                        ),
                        Writte(
                          text: "MAINTENANT",
                        ),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonText(
                          bgColor: Colors.white,
                          borderColor: Colors.white,
                          textColor: Colors.black,
                          width: 180,
                          text: "CONNEXION",
                          onPress: () {
                            Navigator.pushNamed(context, "/login");
                          },
                        ),
                        ButtonText(
                          bgColor: Color(0xff11BD9E),
                          borderColor: Colors.white,
                          textColor: Colors.white,
                          width: 180,
                          text: "INSCRIPTION",
                          onPress: () {
                            Navigator.pushNamed(context, "/register");
                          },
                        )
                      ],
                    ),
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

class Writte extends StatelessWidget {
  final String text;
  const Writte({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 38, fontWeight: FontWeight.w700, color: Colors.white),
    );
  }
}
