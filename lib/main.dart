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
    // print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'resposta': ['Coellho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu endereço?',
        'resposta': ['Bayeux', 'João Pessoa', 'Campina', 'Caja']
      },
      {
        'texto': 'Qual é a seu Instrutor Favorito?',
        'resposta': ['Maria', 'João', 'Leo', 'Pedro']
      }
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
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta(respostas[0], _responder),
            Resposta(respostas[1], _responder),
            Resposta(respostas[2], _responder),
            Resposta(respostas[3], _responder),
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
