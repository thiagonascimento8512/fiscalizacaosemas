import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/common_widgets/select_localizacao.dart';

class DepositoLocalStep extends StatefulWidget {
  const DepositoLocalStep({super.key});

  @override
  State<DepositoLocalStep> createState() => _DepositoLocalStepState();
}

class _DepositoLocalStepState extends State<DepositoLocalStep> {
  @override
  Widget build(BuildContext context) {
    return const SelectLocalizacao();
  }
}
