import 'package:flutter/material.dart';

import 'home-page.dart';
import 'login/login-page.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}
