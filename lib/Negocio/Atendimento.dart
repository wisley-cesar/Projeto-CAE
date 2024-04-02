import 'Usuario.dart';

class Atendimento {
  final int id;
  final DateTime data;
  final List<Usuario> usuario;
  Atendimento({
    required this.id,
    required this.data,
    required this.usuario
  });
  excluir() {}
  emitir() {}
  incluir() {}
  altera() {}
  consultaTodos(int id) {}
}
