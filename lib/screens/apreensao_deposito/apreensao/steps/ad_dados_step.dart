import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';

import '../../../../common_widgets/cadastro_testemunhas_screen.dart';

class AdDadosStep extends StatefulWidget {
  const AdDadosStep({super.key});

  @override
  State<AdDadosStep> createState() => _AdDadosStepState();
}

class _AdDadosStepState extends State<AdDadosStep> {
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
          const SectionTitle(title: 'Apreensão'),
          16.height,
          Row(
            children: [
              Expanded(
                child: customTextField(
                    label: 'Auto de Infração', hint: 'Informe o código'),
              ),
              16.width,
              Expanded(
                child: customTextField(
                    label: 'Ordem de fiscalização', hint: 'Informe o código'),
              ),
            ],
          ),
          16.height,
          customTextField(
              label: 'Agente de fiscalização',
              hint: 'Selecione o agente de fiscalização'),
          16.height,
          customTextField(
            label: 'Justificativa da apreensão',
            hint: 'Descreva a justificativa da apreensão',
            lines: 3,
          ),
          16.height,
          customTextField(
            label: 'Observação',
            hint: 'Descreva a observação da apreensão',
            lines: 3,
          ),
          24.height,
          const Divider(),
          const SectionTitle(title: 'Testemunhas'),
          16.height,
          ElevatedButton(
            onPressed: showTestemunhaDialog,
            child: const Text('Cadastrar testemunha'),
          ),
        ],
      ),
    );
  }
}
