import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class EnquadramentoStep extends StatefulWidget {
  const EnquadramentoStep({super.key});

  @override
  State<EnquadramentoStep> createState() => _EnquadramentoStepState();
}

class _EnquadramentoStepState extends State<EnquadramentoStep> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildOption('Contrariando'),
        const Divider(),
        _buildOption('Enquadrando-se'),
        const Divider(),
        _buildOption('Em Consonância'),
      ],
    );
  }

  Widget _buildOption(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: boldTextStyle(),
        ),
        Text(
          'Utilize o botão abaixo para adicionar um "$title"',
          style: secondaryTextStyle(),
        ),
        24.height,
        Text(
          '**Nenhum $title adicionado**',
          style: secondaryTextStyle(size: 24),
        ),
        24.height,
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(color: Colors.grey, width: 2),
          ),
          child: Text('Adicionar $title', style: boldTextStyle()),
        ),
      ],
    );
  }
}
