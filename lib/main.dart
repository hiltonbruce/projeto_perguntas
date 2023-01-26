import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppstate extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu endereço?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas Para Rhanna'),
        ),
        body: Column(
          children: [
            Text('Olá Flutter!!!'),
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Resposta 2 foi selecionada!');
              },
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3!!'),
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppstate createState() {
    return PerguntaAppstate();
  }
}
