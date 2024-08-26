import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/routes/my_routes.dart';
import 'package:projetodepoo/Tela/widget/opcao_atendimento.dart';

class MyAtendimento extends StatelessWidget {
  const MyAtendimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atendimento'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          OpcaoAtendimento(
            title: 'Excluir',
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.ATENDIMENTO_EXCLUIR);
            },
          ),        
          OpcaoAtendimento(
            title: 'Emitir',
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.ATENDIMENTO_EMITIR);
            },
          ),
          OpcaoAtendimento(
            title: 'Incluir',
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.ATENDIMENTO_INCLUIR);
            },
          ),
          OpcaoAtendimento(
            title: 'Consultar Todos',
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(MyRoutes.ATENDIMENTO_CONSULTAR_TODOS);
            },
          ),
        ],
      ),
    );
  }
}
