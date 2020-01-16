import 'package:flutter/material.dart';
import 'package:ufcapp/app/shared/widgets/input.widget.dart';
import 'package:ufcapp/app/shared/widgets/loading-button.widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 50, right: 40, left: 40, bottom: 40),
        // color: Colors.white,
        children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assets/padlock.png"),
            ),
            SizedBox(height: 20),
            Text(
              'Esqueceu a senha?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Entre com o email associado à conta. Nós enviaremos um link para que possa recuperá-la.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            Input(
              label: 'Email',
              obscure: false,
            ),
            SizedBox(height: 20),
            LoadingButton(
              text: 'Enviar',
              busy: false,
              func: () {},
            ),
            SizedBox(height: 20),
          ],
        )
      );
    
    
  }
}