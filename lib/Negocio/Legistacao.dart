class Legistacao {
  final int id;
  final String paragrafo;
  final String texto;
  final int versao;

  Legistacao({
    required this.id,
    required this.paragrafo,
    required this.texto,
    required this.versao,
  });
   excluir() {}
  emitir() {}
  incluir() {}
  altera() {}
  consultaTodos(int id) {}
}
