import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/apreensao_deposito/steps/ad_dados_step.dart';

class CadastroApreensaoDeposito extends StatefulWidget {
  const CadastroApreensaoDeposito({super.key});

  @override
  State<CadastroApreensaoDeposito> createState() =>
      _CadastroApreensaoDepositoState();
}

class _CadastroApreensaoDepositoState extends State<CadastroApreensaoDeposito> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastro de Apreensão e Depósito',
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
            content: ApreensaoDepositoDadosStep(),
          ),
          Step(
            title: Text('Itens apreendidos'),
            content: Text('Itens apreendidos'),
          ),
          Step(
            title: Text('Local da apreensão e depósito'),
            content: Text('Itens depositados'),
          ),
        ],
      ),
    );
  }
}
