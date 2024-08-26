import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/provider/atendimento_provider.dart';
import 'package:provider/provider.dart';
import 'package:projetodepoo/Negocio/Usuario.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';

class ConsultarTodos extends StatelessWidget {
  const ConsultarTodos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultar Todos'),
      ),
      body: Consumer<AtendimentoProvider>(
        builder: (context, atendimentoProvider, _) {
          final atendimentos = atendimentoProvider.atendimentos;
          if (atendimentos.isEmpty) {
            return const Center(
              child: Text('Nenhum atendimento encontrado.'),
            );
          }
          return ListView.builder(
            itemCount: atendimentos.length,
            itemBuilder: (context, atendimentoIndex) {
              final atendimento = atendimentos[atendimentoIndex];
              return _buildAtendimentoTile(atendimento);
            },
          );
        },
      ),
    );
  }

  Widget _buildAtendimentoTile(Atendimento atendimento) {
    return ExpansionTile(
      title: Text('Atendimento ${atendimento.id}'),
      subtitle: Text('Descrição: ${atendimento.descricao}'),
      children: atendimento.usuario.map(_buildUsuarioTile).toList(),
    );
  }

  Widget _buildUsuarioTile(Usuario usuario) {
    return ListTile(
      title: Text('Nome: ${usuario.nome}'),
      subtitle: Text('ID: ${usuario.id}, Matrícula: ${usuario.matricula}'),
      leading: const Icon(Icons.person),
    );
  }
}
