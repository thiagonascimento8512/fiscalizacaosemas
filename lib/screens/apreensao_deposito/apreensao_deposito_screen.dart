import 'package:flutter/material.dart';

class ApreensaoDepositoScreen extends StatefulWidget {
  const ApreensaoDepositoScreen({super.key});

  @override
  State<ApreensaoDepositoScreen> createState() =>
      _ApreensaoDepositoScreenState();
}

class _ApreensaoDepositoScreenState extends State<ApreensaoDepositoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apreensão/Depósito'),
      ),
      body: const Center(
        child: Text('Apreensão/Depósito'),
      ),
    );
  }
}
