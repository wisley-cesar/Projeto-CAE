import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/provider/atendimento_provider.dart';

import 'package:provider/provider.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';

class Excluir extends StatefulWidget {
  const Excluir({super.key});

  @override
  _ExcluirState createState() => _ExcluirState();
}

class _ExcluirState extends State<Excluir> {
  Atendimento? _atendimentoSelecionado;

  @override
  Widget build(BuildContext context) {
    final atendimentoProvider = Provider.of<AtendimentoProvider>(context);
    final atendimentos = atendimentoProvider.atendimentos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Excluir Atendimento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<Atendimento>(
              value: _atendimentoSelecionado,
              decoration:
                  const InputDecoration(labelText: 'Selecione o Atendimento'),
              items: atendimentos.map((Atendimento atendimento) {
                return DropdownMenuItem<Atendimento>(
                  value: atendimento,
                  child: Text('Atendimento ${atendimento.id}'),
                );
              }).toList(),
              onChanged: (Atendimento? novoAtendimento) {
                setState(() {
                  _atendimentoSelecionado = novoAtendimento;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Por favor, selecione um atendimento';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            _atendimentoSelecionado != null
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _atendimentoSelecionado!.usuario.length,
                      itemBuilder: (context, index) {
                        final usuario = _atendimentoSelecionado!.usuario[index];
                        return ListTile(
                          title:
                              Text('Nome: ${usuario.nome} ID: ${usuario.id}'),
                          subtitle: Text('Matrícula: ${usuario.matricula}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              _showConfirmationDialog(
                                  context, atendimentoProvider, usuario.id);
                            },
                          ),
                        );
                      },
                    ),
                  )
                : const Text('Selecione um atendimento para ver os usuários'),
            const SizedBox(height: 20),
            if (_atendimentoSelecionado != null)
              ElevatedButton(
                onPressed: () {
                  _showAtendimentoDeletionDialog(context, atendimentoProvider);
                },
                child: const Text('Excluir Atendimento'),

                
              ),
          ],
        ),
      ),
    );
  }

  void _showAtendimentoDeletionDialog(
      BuildContext context, AtendimentoProvider atendimentoProvider) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmação'),
          content: const Text(
              'Tem certeza de que deseja excluir este atendimento e todos os seus usuários?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Excluir'),
              onPressed: () {
                if (_atendimentoSelecionado != null) {
                  atendimentoProvider
                      .excluirAtendimento(_atendimentoSelecionado!.id);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void _showConfirmationDialog(BuildContext context,
      AtendimentoProvider atendimentoProvider, int usuarioId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmação'),
          content:
              const Text('Tem certeza de que deseja excluir este usuário?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Excluir'),
              onPressed: () {
                if (_atendimentoSelecionado != null) {
                  atendimentoProvider.excluirUsuario(
                      _atendimentoSelecionado!.id, usuarioId);
                }
                Navigator.of(context).pop();
                
              },
            ),
          ],
        );
      },
    );
  }
}
