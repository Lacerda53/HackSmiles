import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/button.widget.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ButtonWidget(
            text: "IR PARA A LOJA",
            color: secundaryColor,
          ),
        ),
      ),
    );
  }
}
