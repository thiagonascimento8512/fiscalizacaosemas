import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/deposito/steps/deposito_dados_step.dart';

class CadastrarDeposito extends StatefulWidget {
  const CadastrarDeposito({super.key});

  @override
  State<CadastrarDeposito> createState() => _CadastrarDepositoState();
}

class _CadastrarDepositoState extends State<CadastrarDeposito> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastro de Depósito',
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
            title: Text('Dados'),
            content: DepositoDadosStep(),
          ),
        ],
      ),
    );
  }
}
