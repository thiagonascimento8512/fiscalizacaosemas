import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/common_widgets/select_localizacao.dart';

class LocalizacaoStep extends StatefulWidget {
  const LocalizacaoStep({super.key});

  @override
  State<LocalizacaoStep> createState() => _LocalizacaoStepState();
}

class _LocalizacaoStepState extends State<LocalizacaoStep> {
  @override
  Widget build(BuildContext context) {
    return const SelectLocalizacao();
  }
}
