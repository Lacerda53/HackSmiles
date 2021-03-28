import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/header.widget.dart';
import 'package:hacksmiles/widgets/itemHistoric.widget.dart';

class HistoricPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: HeaderWidget(
            title: "Histórico",
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Recebimentos",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ItemHistoricWidget(value: 600, date: '27/03/2021'),
              ItemHistoricWidget(value: 467, date: '27/02/2021'),
              ItemHistoricWidget(value: 467, date: '30/01/2021'),
              ItemHistoricWidget(value: 467, date: '23/12/2020')
            ],
          ),
        ),
      ),
    );
  }
}
