import 'package:flutter/material.dart';
import 'package:hacksmiles/pages/bottombar.page.dart';
import 'package:hacksmiles/pages/welcome.page.dart';
import 'package:hacksmiles/theme/styles.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme(),
      home: WelcomePage(),
    );
  }
}
