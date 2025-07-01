import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String nome;
  final String tipo;

  const DetalhePage({super.key, required this.nome, required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes do Produto')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Você está vendo o $nome\nCategoria: $tipo',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
