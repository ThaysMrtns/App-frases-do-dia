import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: App()
  ));
  
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            "Que a força esteja com vo",
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
          FlatButton(
              color: Colors.blue,
              onPressed: (){print("Botão pressionado!");},
              child: Text(
                "Botão",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )
              )
          )
        ],
      ),
    );
  }
}