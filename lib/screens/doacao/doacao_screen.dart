import 'package:flutter/material.dart';

class DoacaoScreen extends StatefulWidget {
  const DoacaoScreen({super.key});

  @override
  State<DoacaoScreen> createState() => _DoacaoScreenState();
}

class _DoacaoScreenState extends State<DoacaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doação'),
      ),
      body: const Center(
        child: Text('Doação'),
      ),
    );
  }
}
