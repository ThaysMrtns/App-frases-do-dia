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
    return Scaffold(
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
    );
  }
}

