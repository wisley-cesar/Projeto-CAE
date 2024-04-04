import 'package:flutter/material.dart';

class AtendimentoPage extends StatelessWidget {
  const AtendimentoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(17),
          ),
        ),
        title: const Text(
          'Atendimento',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(219, 36, 123, 39),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Incluir')),
              ElevatedButton(onPressed: () {}, child: Text('Alterar')),
              ElevatedButton(onPressed: () {}, child: Text('Excluir')),
              ElevatedButton(onPressed: () {}, child: Text('Consultar')),
            ],
          ),
        ),
      ]),
    );
  }
}
