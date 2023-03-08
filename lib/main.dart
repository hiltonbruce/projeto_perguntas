import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppstate extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Vermelho', 'pontuacao': 1},
        {'texto': 'Verde', 'pontuacao': 8},
        {'texto': 'Branco', 'pontuacao': 10},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Leão', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Coellho', 'pontuacao': 1},
      ]
    },
    // {
    //   'texto': 'Qual é o seu endereço?',
    //   'respostas': [
    //     {'texto': 'Bayeux', 'pontuacao': 10},
    //     {'texto': 'João Pessoa', 'pontuacao': 5},
    //     {'texto': 'Campina', 'pontuacao': 3},
    //   ]
    // },
    {
      'texto': 'Qual é a seu Instrutor Favorito?',
      'respostas': [
        {'texto': 'Leo', 'pontuacao': 10},
        {'texto': 'Maria', 'pontuacao': 5},
        {'texto': 'João', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
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
            : Resultado(_pontuacaoTotal),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppstate createState() {
    return _PerguntaAppstate();
  }
}
