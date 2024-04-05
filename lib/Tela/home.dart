import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/components/atendimento.dart';

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
      appBar: buildAppBar(),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.amberAccent,
      ),
      bottomNavigationBar: buildBottomAppBar(context),
      body: buildBody(context),
    );
  }
}

PreferredSize buildAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      backgroundColor: Color(0xFF247B27),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(17),
        ),
      ),
      title: const Column(
        children: [
          Text(
            'CAE',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'IF-Goiano',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildBottomAppBar(BuildContext context) {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    color: const Color(0xFF247B27),
    child: IconTheme(
      data: const IconThemeData(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(width: 45),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            const SizedBox(width: 45),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    ),
  );
}

Widget buildBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: ListView(
      children: [
        buildElvatedButton(context, 'Atendimento', const AtendimentoPage()),
        buildElvatedButton(context, 'Nada Consta', null),
        buildElvatedButton(context, 'Controle Dos Armarios', null),
        buildElvatedButton(context, 'Advertencia', null),
      ],
    ),
  );
}

Widget buildElvatedButton(BuildContext context, String texto, Widget? destino) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.amberAccent,
    ),
    onPressed: () {
      if (destino != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => destino),
        );
      }
    },
    child: Text(
      texto,
      style: const TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
