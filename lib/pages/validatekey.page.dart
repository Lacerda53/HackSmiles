import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hacksmiles/pages/onboarding.page.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/button.widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ValidatekeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Verificação",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 23,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Seu código foi enviado para seu número de celular, via SMS.",
                style: TextStyle(color: Color(0xFF8C8792)),
              ),
              SizedBox(
                height: 40,
              ),
              PinCodeTextField(
                appContext: context,
                length: 5,
                animationDuration: Duration(milliseconds: 1),
                backgroundColor: Colors.transparent,
                onChanged: null,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    borderWidth: 1,
                    fieldHeight: 50,
                    fieldWidth: 60,
                    inactiveColor: Color(0xFFE7E7EF),
                    activeColor: Color(0xFFE7E7EF),
                    selectedColor: primaryColor),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 15, bottom: 20, right: 15),
        child: ButtonWidget(
          text: "PRÓXIMO",
          color: secundaryColor,
          to: new OnboardingPage(),
        ),
      ),
    );
  }
}
