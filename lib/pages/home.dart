import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Buscar'),
          Icon(Icons.search),
        ]));
  }
}
