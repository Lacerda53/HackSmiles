import 'package:flutter/material.dart';
import 'package:hacksmiles/models/CheckBoxModel.model.dart';
import 'package:hacksmiles/theme/styles.dart';

class CheckboxWidget extends StatefulWidget {
  final bool validate;
  const CheckboxWidget({Key key, this.item, this.validate= false}) : super(key: key);

  final CheckBoxModel item;

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.item.finish? Color.fromRGBO(255, 140, 79, .38):null,
      child: Theme(
        data: ThemeData(
          unselectedWidgetColor: Color(0xFFDADADB),
          backgroundColor: primaryColor
        ),
        child: CheckboxListTile(
          title: Text(widget.item.text, style: TextStyle(color: widget.item.finish?Color(0xFFD74B00):null)),
          value: widget.item.checked,
          activeColor: secundaryColor,
          onChanged: (value) {
            if(!widget.item.finish && !widget.validate){
              setState(() {
              widget.item.checked = value;
            });
            }else{
              return;
            }
          },
        ),
      ),
    );
  }
}
