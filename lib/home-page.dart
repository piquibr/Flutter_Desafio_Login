import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const usuario = Hero(
      tag: 'usuario',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/assets/1703535699051.jpeg'),
        ),
      ),
    );

    const bemvindo = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem vindo Piqui',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    const nome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Davidson Piqui (dpiqui@hotmail.com).',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final corpo = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 229, 237, 243),
          Color.fromARGB(255, 110, 137, 150),
        ]),
      ),
      child: const Column(
        children: <Widget>[usuario, bemvindo, nome],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: const Text('Aplicação de Exemplo de Login'),
      ),
      body: corpo,
    );
  }
}
