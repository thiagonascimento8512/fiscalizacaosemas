import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';

class DepositoDepositarioStep extends StatefulWidget {
  const DepositoDepositarioStep({super.key});

  @override
  State<DepositoDepositarioStep> createState() =>
      _DepositoDepositarioStepState();
}

class _DepositoDepositarioStepState extends State<DepositoDepositarioStep> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Depositário'),
          16.height,
          const ElevatedButton(
            onPressed: null,
            child: Text('Adicionar depositário'),
          ),
          16.height,
          const Text(
              'Nenhum depositário adicionado. Utilize o botão acima para adicionar um depositário.'),
          16.height,
          const Divider(),
        ],
      ),
    );
  }
}
