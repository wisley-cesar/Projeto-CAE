import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/screens/atendimento_page.dart';
import 'package:projetodepoo/Tela/screens/opcoes_servico.dart';
import 'package:projetodepoo/Tela/routes/rotas.dart';

main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green,
            secondary: Colors.amber,
            background: const Color.fromARGB(255, 161, 195, 130),
          ),
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyLarge: const TextStyle(
                  fontSize: 20,
                ),
              ),
        ),
        routes: {
          MyRotas.HOME: (context) => const OpcoesServico(),
          MyRotas.SERVICE_OPTIONS: (context) => const AtendimentoPage()
        });
  }
}
