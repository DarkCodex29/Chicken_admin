import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  static const name = 'contact-favorite';

  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto'),
        ),
      body: const Placeholder(),
    );
  }
}