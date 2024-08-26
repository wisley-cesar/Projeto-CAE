import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/provider/atendimento_provider.dart';
import 'package:provider/provider.dart';
import 'package:projetodepoo/Negocio/Usuario.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';

class Emitir extends StatefulWidget {
  const Emitir({super.key});

  @override
  _EmitirState createState() => _EmitirState();
}

class _EmitirState extends State<Emitir> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _descricaoController = TextEditingController();
  Usuario? _usuarioSelecionado;
  Atendimento? _atendimentoSelecionado;

  @override
  void dispose() {
    _descricaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emitir Reunião'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildAtendimentoDropdown(context),
              const SizedBox(height: 16),
              if (_atendimentoSelecionado != null) _buildUsuarioDropdown(),
              const SizedBox(height: 16),
              _buildDescricaoTextField(),
              const SizedBox(height: 20),
              _buildEmitirButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAtendimentoDropdown(BuildContext context) {
    final atendimentos = Provider.of<AtendimentoProvider>(context).atendimentos;
    return DropdownButtonFormField<Atendimento>(
      value: _atendimentoSelecionado,
      decoration: const InputDecoration(labelText: 'Selecione o Atendimento'),
      items: atendimentos.map((Atendimento atendimento) {
        return DropdownMenuItem<Atendimento>(
          value: atendimento,
          child: Text('Atendimento ${atendimento.id}'),
        );
      }).toList(),
      onChanged: (Atendimento? novoAtendimento) {
        setState(() {
          _atendimentoSelecionado = novoAtendimento;
          _usuarioSelecionado = null; // Resetar o usuário selecionado
        });
      },
      validator: (value) {
        if (value == null) {
          return 'Por favor, selecione um atendimento';
        }
        return null;
      },
    );
  }

  Widget _buildUsuarioDropdown() {
    return DropdownButtonFormField<Usuario>(
      value: _usuarioSelecionado,
      decoration: const InputDecoration(labelText: 'Selecione o Usuário'),
      items: _atendimentoSelecionado!.usuario.map((Usuario usuario) {
        return DropdownMenuItem<Usuario>(
          value: usuario,
          child: Text('${usuario.nome} - Matrícula: ${usuario.matricula}'),
        );
      }).toList(),
      onChanged: (Usuario? novoUsuario) {
        setState(() {
          _usuarioSelecionado = novoUsuario;
        });
      },
      validator: (value) {
        if (value == null) {
          return 'Por favor, selecione um usuário';
        }
        return null;
      },
    );
  }

  Widget _buildDescricaoTextField() {
    return TextFormField(
      controller: _descricaoController,
      decoration: const InputDecoration(labelText: 'Descrição da Reunião'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, insira uma descrição';
        }
        return null;
      },
    );
  }

  Widget _buildEmitirButton() {
    return Center(
      child: ElevatedButton(
        onPressed: _emitirReuniao,
        child: const Text('Emitir Reunião'),
      ),
    );
  }

  void _emitirReuniao() {
    if (_formKey.currentState!.validate()) {
      if (_usuarioSelecionado != null && _atendimentoSelecionado != null) {
        final descricao = _descricaoController.text;
        final usuario = _usuarioSelecionado!;
        final atendimento = _atendimentoSelecionado!;

        // Atualiza a descrição do atendimento
        Provider.of<AtendimentoProvider>(context, listen: false)
            .atualizarDescricaoAtendimento(atendimento.id, descricao);

        // Exibe o SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Reunião emitida para ${usuario.nome} com sucesso!',
            ),
          ),
        );

        Navigator.of(context).pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Nenhum usuário selecionado.'),
          ),
        );
      }
    } else {
      print('Validação falhou');
    }
  }
}
