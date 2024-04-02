import 'Usuario.dart';

class Armario {
  final int id;
  final DateTime data;
  final String menssagem;
  final List<Usuario> usuario;

  Armario({
    required this.id,
    required this.data,
    required this.menssagem,
    required this.usuario
  });

  excluir() {}
  emitir() {}
  incluir() {}
  altera() {}
  consultaTodos(int id) {}
}
