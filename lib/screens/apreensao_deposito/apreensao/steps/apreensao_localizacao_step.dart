import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/common_widgets/select_localizacao.dart';

class ApreensaoLocalizacaoStep extends StatefulWidget {
  const ApreensaoLocalizacaoStep({super.key});

  @override
  State<ApreensaoLocalizacaoStep> createState() =>
      _ApreensaoLocalizacaoStepState();
}

class _ApreensaoLocalizacaoStepState extends State<ApreensaoLocalizacaoStep> {
  @override
  Widget build(BuildContext context) {
    return const SelectLocalizacao();
  }
}
