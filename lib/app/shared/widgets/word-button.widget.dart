import 'package:flutter/material.dart';

class WordButton extends StatelessWidget {
  var text = "";
  Function func;
  WordButton({
    @required this.text,
    @required this.func
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1),
      child: FlatButton(
        color: Colors.white,
        child: Text(text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12),
          ),
        onPressed: func,
        splashColor: Colors.white,
        ),
    );
  }
}