import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var text = "";
  Function func;

  LoadingButton({
    @required this.busy,
    @required this.text,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return 
    busy ? 
    Container(
      alignment: Alignment.center,
      height: 50,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
      ),
    )
    :
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Color(0xFFF58524),
            Color(0xFFF92B7F)
          ],
        )
      ),
      height: 50,          
      child: FlatButton(
        textColor: Colors.white,
        splashColor: Colors.white,
        onPressed: func,
        child: Text(text, style: TextStyle(fontSize: 16)),
      ),
        
    );
  }
}