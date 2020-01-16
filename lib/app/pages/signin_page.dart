import 'package:flutter/material.dart';
import 'package:ufcapp/app/pages/forgot_password_page.dart';
import 'package:ufcapp/app/pages/home_page.dart';
import 'package:ufcapp/app/pages/signup_page.dart';
import 'package:ufcapp/app/shared/widgets/input.widget.dart';
import 'package:ufcapp/app/shared/widgets/loading-button.widget.dart';
import 'package:ufcapp/app/shared/widgets/word-button.widget.dart';

class SignInPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60, right: 40, left: 40),
            child: Container(
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    FlutterLogo(
                      size: 200,
                      colors: Colors.deepOrange,
                    ),
                    Input(
                      label: 'Email',
                      obscure: false,
                    ),
                    Input(
                      label: 'Senha',
                      obscure: true,
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.centerRight,
                      child: WordButton(
                          text: 'Esqueceu a senha?',
                          func: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage(),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    LoadingButton(
                      text: 'Entrar',
                      busy: false,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Ainda não possui uma conta?',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            height: 15,
                            child: WordButton(
                              text: 'Cadastre-se',
                              func: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
