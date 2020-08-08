import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_pergunta/Resposta.dart';
import './Questao.dart';
import './Resposta.dart';

void main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  //chama o metodo build que é um Widget que tem como parametro build o contexto
  //retornando Widget do materialApp
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'qual é sua cor favorita?',
      'qual é seu Animal Favorito?',
      'qual é seu Vestido Favorito?',
      'qual é seu Vestido Sua Dança favorita?',
    ];
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("App"),
      ),
      //column estruturar seu layout em co lunas
      body: Column(
          //childrem é uma lista de Widget
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            Resposta("Resposta 1 "),
            Resposta("Resposta 2"),
            Resposta("Resposta 3"),
          ]),
    );
    return MaterialApp(
      //scaffold ele da a estrutura da aplicação
      home: scaffold,
    );
  }
}

//classe que atualiza o estado da aplicação
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
