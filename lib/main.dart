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
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coellho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu endereço?',
        'respostas': ['Bayeux', 'João Pessoa', 'Campina']
      },
      {
        'texto': 'Qual é a seu Instrutor Favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];

    // final respostas = [
    //   'Resposta 1',
    //   'Resposta 2',
    //   'Resposta 3',
    //   'Resposta 4',
    // ];

    List<Widget> respostas = [];

    for (var textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas Para Rhanna'),
        ),
        body: Column(
          children: [
            Text('Olá Flutter!!!'),
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
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
