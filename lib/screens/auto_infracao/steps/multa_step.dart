import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';

class MultaStep extends StatefulWidget {
  const MultaStep({super.key});

  @override
  State<MultaStep> createState() => _MultaStepState();
}

class _MultaStepState extends State<MultaStep> {
  final _controller = MoneyMaskedTextController(
    decimalSeparator: ',',
    thousandSeparator: '.',
    leftSymbol: 'R\$ ',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Valor da Multa'),
        16.height,
        Row(
          children: [
            customTextField(
                    label: 'Tipo da Multa', hint: 'Reais', isRequired: true)
                .expand(),
            16.width,
            customTextField(
              label: 'Valor da Multa',
              hint: 'R\$ 0,00',
              isRequired: true,
              controller: _controller,
            ).expand(),
          ],
        ),
      ],
    );
  }
}
