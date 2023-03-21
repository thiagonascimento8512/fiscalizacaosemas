import 'package:flutter/material.dart';

class OrdemFiscalizacaoDetailsScreen extends StatefulWidget {
  const OrdemFiscalizacaoDetailsScreen({super.key});

  @override
  State<OrdemFiscalizacaoDetailsScreen> createState() =>
      _OrdemFiscalizacaoDetailsScreenState();
}

class _OrdemFiscalizacaoDetailsScreenState
    extends State<OrdemFiscalizacaoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Ordem de Fiscalização'),
      ),
      body: const Center(
        child: Text('Detalhes da Ordem de Fiscalização'),
      ),
    );
  }
}
