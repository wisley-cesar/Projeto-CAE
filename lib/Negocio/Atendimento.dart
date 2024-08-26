import 'package:projetodepoo/Negocio/Usuario.dart';

class Atendimento {
  final int id;
  final DateTime data;
  final List<Usuario> usuario;
  String? descricao;

  Atendimento({
    required this.id,
    required this.data,
    required this.usuario,
    this.descricao,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Atendimento && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  void excluir(int idUsuario) {
    usuario.removeWhere((user) => user.id == idUsuario);
  }

  void emitir() {
    print('Atendimento ID: $id');
    print('Data: $data');
    print('Descrição: $descricao');
    print('Usuários:');
    for (var usr in usuario) {
      print('ID: ${usr.id}, Matrícula: ${usr.matricula}');
    }
  }

  void incluir(Usuario novoUsuario) {
    usuario.add(novoUsuario);
  }

  void altera(int usuarioId, String novaMatricula) {
    for (var user in usuario) {
      if (user.id == usuarioId) {
        user.matricula = novaMatricula;
        break;
      }
    }
  }

  void consultaTodos() {
    print('Consulta de todos os usuários para Atendimento ID: $id');
    for (var usr in usuario) {
      print('ID: ${usr.id}, Matrícula: ${usr.matricula}');
    }
  }
}
