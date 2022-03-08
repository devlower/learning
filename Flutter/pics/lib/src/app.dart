// Preciso importar um biblioteca ajudante do flutter para ter conteúdo
// exposto na tela
import 'package:flutter/material.dart';

// Criar uma classe que será um widget customizado
// Esta classe precisa extender a classe 'StalessWidget'
class App extends StatelessWidget {
  // Preciso definir o método 'build' que retornará os widgets que o *this* widget
  // mostrará
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see some images"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hi there!');
          },
          child: Icon(Icons.anchor),
        ),
      ),
    );
  }
}
