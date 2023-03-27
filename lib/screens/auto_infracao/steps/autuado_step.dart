import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';

class AutuadoStep extends StatefulWidget {
  const AutuadoStep({super.key});

  @override
  State<AutuadoStep> createState() => _AutuadoStepState();
}

class _AutuadoStepState extends State<AutuadoStep> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          customTextField(
            label: 'Pesquisar',
            hint: 'Pesquisar CPF/CNPJ ou nome/razão social',
            icon: Icons.search,
          ),
        ],
      ),
    );
  }
}
