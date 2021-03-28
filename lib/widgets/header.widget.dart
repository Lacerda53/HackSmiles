import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hacksmiles/theme/styles.dart';

class HeaderWidget extends StatefulWidget {
  final String title;

  HeaderWidget({this.title});

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(widget.title),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom:3),
                      child: SvgPicture.asset("lib/assets/plan.svg", width: 23,),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "2.000",
                      style: TextStyle(color: secundaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
