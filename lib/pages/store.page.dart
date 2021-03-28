import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/button.widget.dart';
import 'package:hacksmiles/widgets/header.widget.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: HeaderWidget(
            title: "Loja",
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('lib/assets/store.png')),
              SizedBox(
                height: 50,
              ),
              Text(
                "Troque seus pontos",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Troque seus pontos pela sua recompensa na loja Smiles. Chame o responsável e efetue a troca com a conta dele",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff8C8792),
                  fontSize: 17.5,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ButtonWidget(
                text: "IR PARA A LOJA",
                color: secundaryColor /*Color(0xffFF8C4F)*/,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
