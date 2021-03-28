import 'package:flutter/material.dart';
import 'package:hacksmiles/pages/historic.page.dart';
import 'package:hacksmiles/pages/progress.page.dart';
import 'package:hacksmiles/pages/store.page.dart';
import 'package:hacksmiles/pages/task.page.dart';
import 'package:hacksmiles/theme/styles.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
int currentIndex = 0;

  final List<Widget> _children = [
      ProgressPage(),
      TaskPage(),
      HistoricPage(),
      StorePage(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: bgColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: grayColor,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        iconSize: 28,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.signal_cellular_alt_outlined),
            label: "Progresso",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Tarefas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "Histórico",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: "Loja",
          ),
        ],
        onTap: (index) {
          setState(()=>{
            currentIndex = index,
          });
        },
      ),
    );
  }
}