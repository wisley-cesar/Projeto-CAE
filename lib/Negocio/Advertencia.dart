import 'Legistacao.dart';
import 'Usuario.dart';

class Advertencia {
  final int id;
  final DateTime data;
  final String mensagem;
  final Legistacao lei;
  final List<Usuario> usuario;

  Advertencia({
    required this.id,
    required this.data,
    required this.mensagem,
    required this.lei,
    required this.usuario
  });

  excluir() {}
  emitir() {}
  incluir() {}
  altera() {}
  consultaTodos(int id) {}


  
}
