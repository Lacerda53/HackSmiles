import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/button.widget.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('lib/assets/onboarding.png'),
              SizedBox(
                height: 50,
              ),
              Text(
                "Seu responsável criou um plano de tarefas personalizado",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 21,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Realize todas as tarefas estipuladas para garantir suas milhas. Elas não possuem validade.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8C8792),
                  fontSize: 15
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left:15, bottom: 20, right: 15),
        child: ButtonWidget(
          text: "COMEÇAR",
          color: secundaryColor,
        ),
      ),
    );
  }
}
