import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/common_widgets/data_info.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';
import 'package:semasfiscalizacao/providers/autuado_provider.dart';

import '../../../model/abstract_pessoa.dart';

class AutuadoStep extends StatefulWidget {
  const AutuadoStep({super.key});

  @override
  State<AutuadoStep> createState() => _AutuadoStepState();
}

class _AutuadoStepState extends State<AutuadoStep> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutuadoProvider _autuadoProvider = AutuadoProvider();

  @override
  Widget build(BuildContext context) {
    Pessoa autuado = _autuadoProvider.autuados[0];

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SectionTitle(title: 'Dados'),
          Row(
            children: [
              DataInfo(title: autuado.tipo, value: autuado.identificacao),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Selecionar Autuado'),
          ),
        ],
      ),
    );
  }
}
