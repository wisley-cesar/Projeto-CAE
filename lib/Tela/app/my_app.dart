import 'package:flutter/material.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';
import 'package:projetodepoo/Negocio/Usuario.dart';
import 'package:projetodepoo/Tela/pages/emitir.dart';
import 'package:projetodepoo/Tela/pages/excluir.dart';
import 'package:projetodepoo/Tela/pages/incluir.dart';
import 'package:projetodepoo/Tela/provider/atendimento_provider.dart';
import 'package:provider/provider.dart';
import 'package:projetodepoo/Tela/pages/consutar_todos.dart';
import 'package:projetodepoo/Tela/pages/my_atendimento.dart';
import 'package:projetodepoo/Tela/pages/my_home.dart';
import 'package:projetodepoo/Tela/routes/my_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AtendimentoProvider()
        ..adicionarAtendimento(
          Atendimento(
            descricao: 'Atendimento Inicial',
            id: 1,
            data: DateTime.now(),
            usuario: [
              Usuario(id: 1, matricula: '001', nome: 'Wisley'),
              Usuario(id: 2, matricula: '002', nome: 'Lucas'),
              Usuario(id: 3, matricula: '003', nome: 'Larah'),
            ],
          ),
        ),
      child: MaterialApp(
        home: const MyHome(),
        debugShowCheckedModeBanner: false,
        routes: {
          MyRoutes.ATENDIMENTO: (context) => const MyAtendimento(),
          MyRoutes.ATENDIMENTO_INCLUIR: (context) => const Incluir(),
          MyRoutes.ATENDIMENTO_EMITIR: (context) => const Emitir(),
          MyRoutes.ATENDIMENTO_EXCLUIR: (context) => const Excluir(),
          MyRoutes.ATENDIMENTO_CONSULTAR_TODOS: (context) =>
              const ConsultarTodos(),
        },
      ),
    );
  }
}
