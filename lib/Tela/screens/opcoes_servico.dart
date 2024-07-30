import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/components/Barra_de_Navegacao/build_bottom_app_bar.dart';
import 'package:projetodepoo/Tela/components/MyAppBar/appBar.dart';
import 'package:projetodepoo/Tela/components/categoria_item.dart';
import 'package:projetodepoo/Tela/data/lista_dados.dart';

class OpcoesServico extends StatelessWidget {
  const OpcoesServico({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(
          tituloPrimario: 'Cae',
          tituloSecundario: ' IF-Goiano',
        ),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amberAccent,
          child: const Icon(
            Icons.add,
          ),
        ),
        bottomNavigationBar: const BuildBottomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 20,
              childAspectRatio: 5 / 4,
              crossAxisSpacing: 20,
            ),
            children: LISTDADE.map((categoria) {
              return CategoriaItem(categoria: categoria);
            }).toList(),
          ),
        ));
  }
}
