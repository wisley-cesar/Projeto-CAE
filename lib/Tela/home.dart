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
      appBar: AppBar(
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
                'IF-Goiano ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(219, 36, 123, 39)),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.amberAccent,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Color.fromARGB(219, 36, 123, 39),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                ),
                SizedBox(
                  width: 45,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                SizedBox(
                  width: 45,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.list),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AtendimentoPage()));
                  },
                  child: const Text(
                    'Atendimento',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    elevation: 10,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Nada Consta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent, elevation: 10),
                  onPressed: () {},
                  child: const Text(
                    'Controle Dos Armarios',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent),
                  onPressed: () {},
                  child: const Text(
                    'Advertencia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
