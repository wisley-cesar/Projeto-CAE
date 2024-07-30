import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/model/categoria.dart';

List<Categoria> LISTDADE = [
  Categoria(
    id: '01',
    nome: 'Atendimento',
    color: Colors.purple,
    opcoes: [
      'Excluir',
      'Emitir',
      'Incluir',
      'Alterar',
      'Consultar Todos',
    ],
  ),
  Categoria(
    id: '02',
    nome: 'Nada Consta',
    color: Colors.blue,
    opcoes: [
      'Emitir',
    ],
  ),
  Categoria(
    id: '03',
    nome: 'Controle dos Armarios',
    color: Colors.orange,
    opcoes: [
      'Excluir',
      'Emitir',
      'Incluir',
      'Alterar',
      'Consultar Todos',
    ],
  ),
  Categoria(
    id: '04',
    nome: 'Advertencia',
    color: Colors.red,
    opcoes: [
      'Excluir',
      'Emitir',
      'Incluir',
      'Alterar',
      'Consultar Todos',
      'Legistação ',
    ],
  ),
];
