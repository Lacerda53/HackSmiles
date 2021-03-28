import 'package:flutter/material.dart';
import 'package:hacksmiles/models/CheckBoxModel.model.dart';
import 'package:hacksmiles/theme/styles.dart';
import 'package:hacksmiles/widgets/Checkbox.widget.dart';
import 'package:hacksmiles/widgets/header.widget.dart';

class TaskPage extends StatelessWidget {
  final List<CheckBoxModel> itens = [
    CheckBoxModel(text: "Lavar a louça 15 dias"),
    CheckBoxModel(text: "Ler um livro"),
    CheckBoxModel(text: "Fazer lições de casa"),
    CheckBoxModel(text: "Arrumar o quarto 15 dias"),
  ];
  final List<CheckBoxModel> itensFinished = [
    CheckBoxModel(text: "Ler um livro",checked: true),
    CheckBoxModel(text: "Arrumar o quarto todos os dias",checked: true),
  ];
  final List<CheckBoxModel> itensConfirmed = [
    CheckBoxModel(text: "Lavar a louça 15 dias",checked: true, finish: true),
    CheckBoxModel(text: "Ler um livro",checked: true, finish: true),
  ];

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
              Expanded(
                flex: 4,
                child: ListView.builder(
                  itemCount: itens.length,
                  itemBuilder: (_, int index) {
                    return CheckboxWidget(item: itens[index]);
                  },
                ),
              ),
              Text(
                "Tarefas aguardando validação do responsável",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  itemCount: itensFinished.length,
                  itemBuilder: (_, int index) {
                    return CheckboxWidget(item: itensFinished[index], validate: true,);
                  },
                ),
              ),
              Text(
                "Tarefas confirmadas",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: itensConfirmed.length,
                  itemBuilder: (_, int index) {
                    return CheckboxWidget(item: itensConfirmed[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
