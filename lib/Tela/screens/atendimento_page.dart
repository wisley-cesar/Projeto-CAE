import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/components/MyAppBar/appBar.dart';
import 'package:projetodepoo/Tela/components/my_button.dart';
import 'package:projetodepoo/Tela/model/categoria.dart';

class AtendimentoPage extends StatelessWidget {
  const AtendimentoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categoria = ModalRoute.of(context)!.settings.arguments as Categoria;
    return Scaffold(
      appBar: MyAppBar(
        key: key,
        tituloPrimario: 'Cae',
        tituloSecundario: categoria.nome,
      ),
      body: SizedBox(
        height: 300,
        width: 400,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: categoria.opcoes.length,
                itemBuilder: (context, index) {
                  return MyButton(
                    nome: categoria.opcoes[index],
                    onPressed: () {},
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
