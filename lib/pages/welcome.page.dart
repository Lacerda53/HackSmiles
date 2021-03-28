import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hacksmiles/pages/onboarding.page.dart';
import 'package:hacksmiles/theme/styles.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            Row(
              children: [
                Container(
                  width: 3,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  color: secundaryColor,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Seja bem vindo ao app\n",
                      ),
                      TextSpan(
                          text: "NOME",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: " do programa de\nmilhas da Smiles",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Vamos configurar sua conta",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () => {},
              color: bgColor,
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: SvgPicture.asset(
                        'lib/assets/1.svg',
                        width: 20,
                      ),
                    ),
                    Text(
                      "SOU O RESPONSÁVEL DE\nUM MENOR DE IDADE",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => OnboardingPage())),
              color: bgColor,
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 14),
                      child: SvgPicture.asset(
                        'lib/assets/2.svg',
                        width: 30,
                      ),
                    ),
                    Text(
                      "SOU MENOR DE IDADE",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
