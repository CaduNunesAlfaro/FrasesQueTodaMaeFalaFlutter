import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'frases que toda mae fala'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _fraseAleatorio = 0; //criando lista de frases
    List _frases = [
    'No dia que eu sumir…',
    'Tudo eu nessa casa!',
    'Em casa a gente conversa.',
    'Se eu for aí e achar…',
    'Enquanto você estiver no mesmo teto que eu, vai fazer o que eu mandar.',
    'Vou contar até três…',
    'Não fez mais que sua obrigação',
    'Você não é todo mundo',
    'Se eu sumisse você ia ver',
    'Quando eu tinha sua idade eu já trabalhava e ainda cuidava da casa',
    '"A madame não quer mais nada, né?!"'
    ];

  void _incrementCounter() {
    setState(() {
      _fraseAleatorio = new Random().nextInt(11); //gerando numeros aleatorios de frases



    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botao para gerar uma frase:',
            ),
            Text(
              _frases[_fraseAleatorio], //chamando a funcao frases e dentro dela a funcao que faz chamar aleatorio
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.escalator_warning_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
