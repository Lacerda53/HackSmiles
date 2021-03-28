
import 'package:flutter/material.dart';

class ItemTaskWidget extends StatefulWidget {
  @override
  _ItemTaskWidgetState createState() => _ItemTaskWidgetState();
}

class _ItemTaskWidgetState extends State<ItemTaskWidget> {
  bool check;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("Lavar a louça 15 dias"),
          CheckboxListTile(value: check, onChanged: (value)=>setState(()=>this.check = value))
        ],
      ),
    );
  }
}
