import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppstate extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu endereço?',
      'Qual é a sua casa?',
    ];
    final respostas = [
      'Resposta 1',
      'Resposta 2',
      'Resposta 3',
      'Resposta 4',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas Para Rhanna'),
        ),
        body: Column(
          children: [
            Text('Olá Flutter!!!'),
            Questao(perguntas[_perguntaSelecionada]),
            Resposta(respostas[0]),
            Resposta(respostas[1]),
            Resposta(respostas[2]),
            Resposta(respostas[3]),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppstate createState() {
    return _PerguntaAppstate();
  }
}
