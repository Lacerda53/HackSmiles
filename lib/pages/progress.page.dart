import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/header.widget.dart';

class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: HeaderWidget(
            title: "Progresso",
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/progress_orlando.png',
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              padding: EdgeInsets.only(left:15, right: 15),
              child: Row(
                children: [
                  Image.asset('lib/assets/progress_spinner.png', width: MediaQuery.of(context).size.width/3.3,),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Você vai ganhar cerca de",
                        style: TextStyle(color: grayColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "500 milhas",
                        style: TextStyle(
                            color: secundaryColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "mês que vem :)",
                        style: TextStyle(color: grayColor),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
