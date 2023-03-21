import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/model/demanda_model.dart';

class DemandaScreen extends StatefulWidget {
  const DemandaScreen({super.key, required this.demanda});
  final Demanda demanda;

  @override
  State<DemandaScreen> createState() => _DemandaScreenState();
}

class _DemandaScreenState extends State<DemandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demanda'),
      ),
      body: Center(
        child: Text(widget.demanda.codigo),
      ),
    );
  }
}
