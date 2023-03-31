import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/steps/ad_dados_step.dart';

class CadastrarApreensaoDeposito extends StatefulWidget {
  const CadastrarApreensaoDeposito({super.key});

  @override
  State<CadastrarApreensaoDeposito> createState() =>
      _CadastrarApreensaoDepositoState();
}

class _CadastrarApreensaoDepositoState
    extends State<CadastrarApreensaoDeposito> {
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
            if (currentStep < 4) {
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
            content: AdDadosStep(),
          ),
        ],
      ),
    );
  }
}
