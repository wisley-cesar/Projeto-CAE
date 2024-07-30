import 'package:flutter/material.dart';
import 'package:projetodepoo/Tela/model/categoria.dart';
import 'package:projetodepoo/Tela/routes/rotas.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;
  const CategoriaItem({super.key, required this.categoria});

  void _selecionandoTela(BuildContext context) {
    Navigator.pushNamed(
      context,
      MyRotas.SERVICE_OPTIONS,
      arguments: categoria,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selecionandoTela(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [categoria.color.withOpacity(0.5), categoria.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Text(
          categoria.nome,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
