import 'package:flutter/material.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';
import 'package:projetodepoo/Negocio/Usuario.dart';

class AtendimentoProvider extends ChangeNotifier {
  List<Atendimento> _atendimentos = [];

  List<Atendimento> get atendimentos => _atendimentos;

  AtendimentoProvider();

  // Método para adicionar um novo atendimento
  void adicionarAtendimento(Atendimento novoAtendimento) {
    print('Adicionando atendimento: ${novoAtendimento.id}');
    _atendimentos.add(novoAtendimento);
    notifyListeners();
  }

  // Método para excluir um atendimento
  void excluirAtendimento(int atendimentoId) {
    _atendimentos.removeWhere((atendimento) => atendimento.id == atendimentoId);
    print("excluir Atendimento ${atendimentoId}");

    notifyListeners();
  }

  // Método para excluir um usuário de um atendimento específico
  void excluirUsuario(int atendimentoId, int usuarioId) {
    for (var atendimento in _atendimentos) {
      if (atendimento.id == atendimentoId) {
        atendimento.usuario.removeWhere((usuario) => usuario.id == usuarioId);
        print("esse é o atednimetonoID$atendimentoId");
        print('${atendimento.id} esse é o atendimetno.id');
        notifyListeners();
        break;
      }
    }
  }

  void incluirUsuario(Usuario novoUsuario) {
    if (_atendimentos.isNotEmpty) {
      _atendimentos.first.incluir(novoUsuario);
    }
    notifyListeners();
  }

  void alterarUsuario(int usuarioId, String novaMatricula) {
    for (var atendimento in _atendimentos) {
      atendimento.altera(usuarioId, novaMatricula);
    }
    notifyListeners();
  }

  // Método para atualizar a descrição de um atendimento específico
  void atualizarDescricaoAtendimento(int atendimentoId, String novaDescricao) {
    for (var atendimento in _atendimentos) {
      if (atendimento.id == atendimentoId) {
        atendimento.descricao = novaDescricao;
        notifyListeners();
        break;
      }
    }
  }
}
