import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            "Que a força esteja com você",
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
    )
  ));
  
}

