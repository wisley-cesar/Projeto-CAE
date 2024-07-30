

import 'package:projetodepoo/Negocio/Advertencia.dart';
import 'package:projetodepoo/Negocio/Armario.dart';
import 'package:projetodepoo/Negocio/Atendimento.dart';
import 'package:projetodepoo/Negocio/Legistacao.dart';
import 'package:projetodepoo/Negocio/NadaConsta.dart';

final legistacao =
    Legistacao(id: 01, paragrafo: 'paragrafo', texto: 'texto', versao: 1);

List OPCOES_SERVICO = [
  Atendimento(
    id: 01,
    data: DateTime.now(),
    usuario: [],
  ),
  Armario(
    id: 02,
    data: DateTime.now(),
    menssagem: 'menssagem',
    usuario: [],
  ),
  NadaConsta(
    id: 03,
    date: DateTime.now(),
    messagem: 'messagem',
    usuario: [],
  ),
  Advertencia(
    id: 04,
    data: DateTime.now(),
    mensagem: 'mensagem',
    lei: legistacao,
    usuario: [],
  ),
];
