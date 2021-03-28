import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            icon: SvgPicture.asset('lib/assets/progress.svg',color: currentIndex==0?primaryColor: null),
            label: "Progresso",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/tasks.svg',color: currentIndex==1?primaryColor: null),
            label: "Tarefas",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/historic.svg',color: currentIndex==2?primaryColor: null),
            label: "Histórico",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/store.svg',color: currentIndex==3?primaryColor: null),
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