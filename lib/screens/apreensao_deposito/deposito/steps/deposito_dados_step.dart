import 'package:flutter/material.dart';

class DepositoDadosStep extends StatefulWidget {
  const DepositoDadosStep({super.key});

  @override
  State<DepositoDadosStep> createState() => _DepositoDadosStepState();
}

class _DepositoDadosStepState extends State<DepositoDadosStep> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Nome',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'CPF',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'RG',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Endereço',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Telefone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
        ],
      ),
    );
  }
}
