import 'package:flutter/material.dart';

/// Classe base abstrata para todos os tipos de produto
abstract class ProdutoWidget extends StatelessWidget {
  final String nome;
  final double preco;
  final String descricao;
  final String imagemUrl;
  final VoidCallback onTap;

  const ProdutoWidget({
    Key? key,
    required this.nome,
    required this.preco,
    required this.descricao,
    required this.imagemUrl,
    required this.onTap,
  }) : super(key: key);

  /// Método que retorna o tipo do produto (será implementado nas classes filhas)
  String getTipoProduto();
}
