import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAE'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Text('Atendimento'),
            elevation: 5,
          ),
          Card(
            child: Text('Nada Consta'),
            elevation: 5,
          ),
          Card(
            child: Text('Controle de Armario'),
            elevation: 5,
          ),
          Card(
            child: Text('Advertencia'),
            elevation: 5,
          ),
        ],
      ),
    );
  }
}
