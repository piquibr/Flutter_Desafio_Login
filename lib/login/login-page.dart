import 'package:flutter/material.dart';

import '../home-page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login_page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'usuario',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('lib/assets/logo_flutter.png'),
      ),
    );

    final usuario = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'dpiqui@hotmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final senha = TextFormField(
      autofocus: false,
      initialValue: '123456',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final entrarButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        child: Text('Entrar'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );

    final esquiSenhaLabel = ElevatedButton(
      child: Text('Esqueci a senha'),
      onPressed: () {
        print('Pressionou Esqueci a senha');
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            usuario,
            SizedBox(height: 8.0),
            senha,
            SizedBox(height: 24.0),
            entrarButton,
            esquiSenhaLabel
          ],
        ),
      ),
    );
  }
}