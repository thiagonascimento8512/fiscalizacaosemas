import 'package:flutter/material.dart';

class OrdemFiscalizacaoScreen extends StatefulWidget {
  const OrdemFiscalizacaoScreen({super.key});

  @override
  State<OrdemFiscalizacaoScreen> createState() =>
      _OrdemFiscalizacaoScreenState();
}

class _OrdemFiscalizacaoScreenState extends State<OrdemFiscalizacaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ordem de Fiscalização'),
      ),
      body: const Center(
        child: Text('Ordem de Fiscalização'),
      ),
    );
  }
}
