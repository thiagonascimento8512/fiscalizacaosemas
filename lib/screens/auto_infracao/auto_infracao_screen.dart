import 'package:flutter/material.dart';

class AutoInfracaoScreen extends StatefulWidget {
  const AutoInfracaoScreen({super.key});

  @override
  State<AutoInfracaoScreen> createState() => _AutoInfracaoScreenState();
}

class _AutoInfracaoScreenState extends State<AutoInfracaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto de Infração'),
      ),
      body: const Center(
        child: Text('Auto de Infração'),
      ),
    );
  }
}
