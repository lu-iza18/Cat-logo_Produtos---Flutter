import 'package:flutter/material.dart';
import '../widgets/eletronico_widget.dart';
import '../widgets/roupa_widget.dart';
import '../widgets/alimento_widget.dart';
import 'detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de Produtos')),
      body: ListView(
        children: [
          EletronicoWidget(
            nome: 'Smartphone X',
            preco: 2999.99,
            descricao: 'Tela AMOLED, 128GB, 5G',
            imagemUrl: 'https://via.placeholder.com/150',
            marca: 'TechBrand',
            garantiaMeses: 12,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DetalhePage(nome: 'Smartphone X', tipo: 'Eletrônico'),
              ));
            },
          ),
          RoupaWidget(
            nome: 'Camiseta Oversized',
            preco: 89.90,
            descricao: 'Algodão 100%, estampa urbana',
            imagemUrl: 'https://via.placeholder.com/150',
            tamanho: 'M',
            material: 'Algodão',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DetalhePage(nome: 'Camiseta Oversized', tipo: 'Roupa'),
              ));
            },
          ),
          AlimentoWidget(
            nome: 'Maçã Orgânica',
            preco: 4.99,
            descricao: 'Fresca, direto da fazenda',
            imagemUrl: 'https://via.placeholder.com/150',
            validade: DateTime(2025, 8, 15),
            ehOrganico: true,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DetalhePage(nome: 'Maçã Orgânica', tipo: 'Alimento'),
              ));
            },
          ),
        ],
      ),
    );
  }
}
