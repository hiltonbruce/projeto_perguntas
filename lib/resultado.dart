import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  // final String texto;
  // Resultado(this.texto);

  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          // Stroked text as border.
          Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 40,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.blue[700]!,
            ),
          ),
          // Solid text as fill.
          Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 40,
              color: Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}
