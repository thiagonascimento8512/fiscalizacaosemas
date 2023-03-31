import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';

import '../../../../common_widgets/cadastro_testemunhas_screen.dart';

class DepositoDadosStep extends StatefulWidget {
  const DepositoDadosStep({super.key});

  @override
  State<DepositoDadosStep> createState() => _DepositoDadosStepState();
}

class _DepositoDadosStepState extends State<DepositoDadosStep> {
  void showTestemunhaDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return const CadastroTestemunhaScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Depósito'),
          16.height,
          Row(
            children: [
              Expanded(
                child: customTextField(
                    label: 'Ordem de fiscalização', hint: 'Informe o código'),
              ),
              16.width,
              Expanded(
                child: customTextField(
                    label: 'Agente de fiscalização',
                    hint: 'Selecione um agente de fiscalização'),
              ),
            ],
          ),
          16.height,
          customTextField(
            label: 'Observação',
            hint: 'Descreva a observação do depósito',
            lines: 3,
          ),
          24.height,
          const Divider(),
          16.height,
          const SectionTitle(title: 'Testemunhas'),
          16.height,
          ElevatedButton(
            onPressed: showTestemunhaDialog,
            child: const Text('Adicionar testemunha'),
          ),
        ],
      ),
    );
  }
}
