
import 'Usuario.dart';

class NadaConsta {
  final int id;
  final DateTime date;
  final String messagem;
  final List<Usuario> usuario;

  NadaConsta({
    required this.id,
    required this.date,
    required this.messagem,
    required this.usuario
  });

  emitir() {}
}
