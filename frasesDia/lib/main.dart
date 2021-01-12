import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Scaffold(
      appBar: AppBar( //Barra de navegação
        title: Text("Instagram"),
        backgroundColor: Colors.purple,
      ),
      body: Padding( //Corpo do app
        padding: EdgeInsets.all(20),
        child: Text("Coé meu amigo"),
      ),
      bottomNavigationBar: BottomAppBar( //Footer
        color: Colors.purple[200],
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Text("T1"),
              Text("T2"),
              Text("T3")
            ],
          ),
        )
      ),
    ),
  ));
  
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0 ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.white)
      ),
      //Adicionando imagens
      /*
      * contain, cover, fill, fitheight,
      * fitWidth, none, scaleDown
      */
      child: Image.asset(
        "imagens/image1.png",
        fit: BoxFit.scaleDown,
      ),

      /*child: Column(
        //Eixos variam de acordo com a direção Row e Column
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Eixo principal
        crossAxisAlignment: CrossAxisAlignment.center, //Eixo secundário

        children: <Widget>[
          Text(
            "T1",
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.none,
            ),
          ),
          Text(
            "T2",
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.none,
            ),
          ),
          Text(
            "T3",
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.none,
            ),
          ),
         /* FlatButton(
              color: Colors.blue,
              onPressed: (){print("Botão pressionado!");},
              child: Text(
                "Botão",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )
              )
          )*/
        ],
      ), */
    ); 
  }
}

