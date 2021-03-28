import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hacksmiles/theme/styles.dart';

class ItemHistoricWidget extends StatefulWidget {
  final int value;
  final String date;
  ItemHistoricWidget({this.value, this.date});

  @override
  _ItemHistoricWidgetState createState() => _ItemHistoricWidgetState();
}

class _ItemHistoricWidgetState extends State<ItemHistoricWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 25, top: 25, left: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('lib/assets/plan.svg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.value.toString(),
                    style: TextStyle(color: Color(0xFF8C8792)),
                  )
                ],
              ),
              Text(
                widget.date,
                style: TextStyle(color: Color(0xFFAAA8AD)),
              )
            ],
          ),
        ),
        Container(
          color: Color(0xffEBEBEB),
          height: 1,
          width: MediaQuery.of(context).size.width,
        )
      ],
    );
  }
}
