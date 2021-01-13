import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<App> {
  var resultado;
  var _list = ["Que a força esteja com você", "Não, eu sou seu pai",
  "Ao infinito e além!", "Dizem por ai que eu sou doida, mas deixa pra lá!"];

  void _geraFrase(){
    // Sorteio de um número do tamanho da lista
    var sort = Random().nextInt( _list.length);

    // Pegando a frase e guardando numa variável
    setState(() {
      resultado = _list[sort];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do dia'),
        backgroundColor: Colors.purple[400],
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
          width: double.infinity, // Faz com que o largura ocupe 100% do espaço disponível
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(
                "Clique no botão para gerar uma frase",
                style: TextStyle(fontSize: 18) ,
              ),
                RaisedButton(
                  color: Colors.purple[300],
                  child: 
                    const Text(
                      "Gerar frase", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      )
                    ),
                  onPressed: _geraFrase,
                ),
                Text(
                  "$resultado", 
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 30),
                ),
              ]
            )
      ),
    );
  }
}

