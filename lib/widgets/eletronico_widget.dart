import 'package:flutter/material.dart';
import 'produto_widget.dart';

/// Widget para produto eletrônico
class EletronicoWidget extends ProdutoWidget {
  final String marca;
  final int garantiaMeses;

  const EletronicoWidget({
    Key? key,
    required String nome,
    required double preco,
    required String descricao,
    required String imagemUrl,
    required VoidCallback onTap,
    required this.marca,
    required this.garantiaMeses,
  }) : super(
    key: key,
    nome: nome,
    preco: preco,
    descricao: descricao,
    imagemUrl: imagemUrl,
    onTap: onTap,
  );

  @override
  String getTipoProduto() => 'Eletrônico';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(imagemUrl, height: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nome, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('R\$ ${preco.toStringAsFixed(2)}'),
                  Text(descricao),
                  Text('Marca: $marca'),
                  Text('Garantia: $garantiaMeses meses'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
