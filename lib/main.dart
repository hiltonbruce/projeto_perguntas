import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppstate extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 5},
        {'texto': 'Vermelho', 'nota': 1},
        {'texto': 'Verde', 'nota': 8},
        {'texto': 'Branco', 'nota': 10},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coellho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 3},
        {'texto': 'Leão', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual é o seu endereço?',
      'respostas': [
        {'texto': 'Bayeux', 'nota': 10},
        {'texto': 'João Pessoa', 'nota': 5},
        {'texto': 'Campina', 'nota': 3},
      ]
    },
    {
      'texto': 'Qual é a seu Instrutor Favorito?',
      'respostas': [
        {'texto': 'Leo', 'nota': 10},
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'João', 'nota': 3},
        {'texto': 'Pedro', 'nota': 1},
      ]
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
    // print(_perguntaSelecionada);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas Para Rhanna'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppstate createState() {
    return _PerguntaAppstate();
  }
}
