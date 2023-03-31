import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../common_widgets/section_title.dart';

class DepositoItensStep extends StatefulWidget {
  const DepositoItensStep({super.key});

  @override
  State<DepositoItensStep> createState() => _DepositoItensStepState();
}

class _DepositoItensStepState extends State<DepositoItensStep> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Itens'),
          16.height,
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add),
                  SizedBox(width: 8),
                  Text('Adicionar item'),
                ],
              ),
            ),
          ),
          16.height,
          const Text(
              'Nenhum depósito adicionado. Utilize o botão acima para adicionar bens para depósito.'),
          16.height,
          const Divider(),
        ],
      ),
    );
  }
}
