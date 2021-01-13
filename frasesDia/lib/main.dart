import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: HomeStateful()
  ));
  
}

// Aprendendo statefull widget
// Tem sempre um estado inicial que pode ser alterado no processo
class HomeStateful extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeStateful> {
  var _frase = "Que a força esteja com você";
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
      appBar: AppBar( //Barra de navegação
        title: Text("Frases do dia"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child:
          Padding( //Corpo do app
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: 
              Column(
                children: [
                  Text("Clique no botão para gerar uma frase"),
                  RaisedButton(onPressed: (){
                      setState(() {
                        _frase = "Todo mundo odeia bugs";
                      });
                    },
                    color: Colors.purple[300],
                    textColor: Colors.white,
                    child:
                    const Text(
                      "Gerar frase", 
                      style:
                      TextStyle(fontSize: 16)
                    ),
                  ),
                  Text("$_frase"),
                ], 
            ),  
          ),
      ),
      bottomNavigationBar: BottomAppBar( //Footer
        color: Colors.purple[200],
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Text("Rodapé"),
            ],
          ),
        )
      ),
    );
  }
}

