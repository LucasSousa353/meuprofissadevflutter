import 'package:flutter/material.dart';
import 'package:meuprofissadev/components/navbar.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(bottomNavigationBar: NavBar());
  }
}
