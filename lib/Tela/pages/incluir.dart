import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/provider/atendimento_provider.dart';
import 'package:provider/provider.dart';
import 'package:projetodepoo/Negocio/Usuario.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';

class Incluir extends StatefulWidget {
  const Incluir({super.key});

  @override
  _IncluirState createState() => _IncluirState();
}

class _IncluirState extends State<Incluir> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usuarioIdController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _matriculaController = TextEditingController();
  final TextEditingController _atendimentoIdController =
      TextEditingController();
  DateTime _dataAtendimento = DateTime.now();

  @override
  void dispose() {
    _usuarioIdController.dispose();
    _nomeController.dispose();
    _matriculaController.dispose();
    _atendimentoIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final atendimentoProvider = Provider.of<AtendimentoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Incluir Atendimento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _atendimentoIdController,
                decoration:
                    const InputDecoration(labelText: 'ID do Atendimento'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o ID do atendimento';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _usuarioIdController,
                decoration: const InputDecoration(labelText: 'ID do Usuário'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o ID do usuário';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(labelText: 'Nome do Usuário'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome do usuário';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _matriculaController,
                decoration: const InputDecoration(labelText: 'Matrícula'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a matrícula';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final int atendimentoId =
                        int.parse(_atendimentoIdController.text);
                    final int usuarioId = int.parse(_usuarioIdController.text);
                    final String nome = _nomeController.text;
                    final String matricula = _matriculaController.text;

                    final novoUsuario = Usuario(
                      id: usuarioId,
                      nome: nome,
                      matricula: matricula,
                    );

                    final novoAtendimento = Atendimento(
                      id: atendimentoId,
                      data: _dataAtendimento,
                      usuario: [novoUsuario],
                    );


                    atendimentoProvider.adicionarAtendimento(novoAtendimento);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Atendimento incluído com sucesso!')),
                    );

                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Incluir Atendimento'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
