import 'package:flutter/material.dart';
import 'package:hacksmiles/pages/validatekey.page.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/button.widget.dart';

class GokeyPage extends StatelessWidget {
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
              Image.asset('lib/assets/gokey.png', width: MediaQuery.of(context).size.width/1.4,),
              SizedBox(
                height: 50,
              ),
              Text(
                "Bem vindo ao app!",
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
                "Entre utilizando o link de acesso enviado pelo seu responsável ou utilize a chave de acesso",
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
          text: "TENHO UMA CHAVE DE ACESSO",
          color: secundaryColor,
          to: new ValidatekeyPage(),
        ),
      ),
    );
  }
}