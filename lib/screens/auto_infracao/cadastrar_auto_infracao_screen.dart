import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/screens/auto_infracao/steps/auto_infracao_data_step.dart';
import 'package:semasfiscalizacao/screens/auto_infracao/steps/autuado_step.dart';
import 'package:semasfiscalizacao/screens/auto_infracao/steps/localizacao_step.dart';

import 'steps/enquadramento_step.dart';

class CadastrarAutoInfracaoScreen extends StatefulWidget {
  const CadastrarAutoInfracaoScreen({super.key});

  @override
  State<CadastrarAutoInfracaoScreen> createState() =>
      _CadastrarAutoInfracaoScreenState();
}

class _CadastrarAutoInfracaoScreenState
    extends State<CadastrarAutoInfracaoScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastrar Auto de Infração',
        ),
      ),
      body: Stepper(
        currentStep: currentStep,
        physics: const ClampingScrollPhysics(),
        onStepCancel: () {
          setState(() {
            if (currentStep > 0) {
              currentStep -= 1;
            } else {
              currentStep = 0;
            }
          });
        },
        onStepContinue: () {
          setState(() {
            if (currentStep < 3) {
              currentStep += 1;
            } else {
              currentStep = 0;
            }
          });
        },
        onStepTapped: (int step) {
          setState(() {
            currentStep = step;
          });
        },
        steps: const [
          Step(
            title: Text('Dados da Infração'),
            content: AutoInfracaoData(),
          ),
          Step(
            title: Text('Dados do Auto de Infração'),
            content: AutuadoStep(),
          ),
          Step(
            title: Text('Local da Infração'),
            content: LocalizacaoStep(),
          ),
          Step(
            title: Text('Enquadramento'),
            content: EnquadramentoStep(),
          ),
        ],
      ),
    );
  }
}
