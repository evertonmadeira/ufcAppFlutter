import 'package:flutter/material.dart';
import 'package:ufcapp/app/pages/forgot_password_page.dart';
import 'package:ufcapp/app/shared/widgets/input.widget.dart';
import 'package:ufcapp/app/shared/widgets/loading-button.widget.dart';
import 'package:ufcapp/app/shared/widgets/word-button.widget.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, right: 40, left: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Text(
                'Cadastre-se',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
            ),
            Text(
                'Preencha os campos abaixo para criar uma conta.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black45,
                ),
            ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   alignment: Alignment(0.0, 1.15),
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/account_circle_grey.png'),
            //       fit: BoxFit.fitHeight,
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //           stops: [0.3, 1.0],
            //           colors: [Color(0xFFF58524), Color(0xFFF92B7F)]),
            //       borderRadius: BorderRadius.all(Radius.circular(56)),
            //       border: Border.all(
            //         width: 1.0,
            //         color: Colors.white,
            //       )),
            //   child: SizedBox.expand(
            //       child: FlatButton(
            //         child: Icon(Icons.add, color: Colors.white),
            //         onPressed: () {},
            //   )),
            // ),
            Input(label: 'Nome', obscure: false),
            TextField(
              maxLength: 11,
              cursorColor: Colors.deepOrange,
              textAlignVertical: TextAlignVertical.bottom,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'CPF',
                labelStyle: new TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 18
                ),
              ),
            ),
            Input(label: 'Email', obscure: false),
            Input(label: 'Senha', obscure: true),
            Input(label: 'Confirmar senha', obscure: true),
            SizedBox(height: 10),
            LoadingButton(text: 'Criar conta', busy: false, func: (){},),
            WordButton(text: 'Cancelar', func: () {
              Navigator.pop(context, false);
            },)
          ],
        ),
      ),
    );
  }
}
