import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  var label = "";
  bool obscure;

  Input({
    @required this.label,
    @required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            cursorColor: Colors.deepOrange,
            textAlignVertical: TextAlignVertical.bottom,
            obscureText: obscure,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: new TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 18
              ),
            ),
          ),    
        ],
      ),
    );
  }
}