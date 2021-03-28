import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final Color color;
  final Widget to;

  ButtonWidget({this.text, this.color = Colors.transparent, this.to});
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 45,
      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => {
          if (widget.to != null)
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => widget.to))
            }
        },
        color: widget.color,
        textColor: Colors.white,
        child: Text(
          widget.text,
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0),
        ),
      ),
    );
  }
}
