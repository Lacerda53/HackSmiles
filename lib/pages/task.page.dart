import 'package:flutter/material.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/header.widget.dart';
import 'package:hacksmiles/widgets/itemTask.widget.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: HeaderWidget(
            title: "Tarefas",
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Tarefas para cumprir até o final do mês",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ItemTaskWidget()
            ],
          ),
        ),
      ),
    );
  }
}
