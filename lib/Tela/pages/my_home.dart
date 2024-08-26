import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/routes/my_routes.dart';
import 'package:projetodepoo/Tela/widget/opcao_home_widget.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('CAE'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OpcaoHomeWidget(
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyRoutes.ATENDIMENTO);
                    },
                    title: 'Atendimento',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OpcaoHomeWidget(
                    color: Colors.lightBlueAccent,
                    onPressed: () {},
                    title: 'Nada Consta',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OpcaoHomeWidget(
                    color: Colors.amber,
                    onPressed: () {},
                    title: 'Controle Dos Armarios',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OpcaoHomeWidget(
                    color: Colors.purple,
                    onPressed: () {},
                    title: 'Advetencia',
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
