import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/apreensao/steps/ad_dados_step.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/apreensao/steps/itens_apreendidos_step.dart';

class CadastrarApreensao extends StatefulWidget {
  const CadastrarApreensao({super.key});

  @override
  State<CadastrarApreensao> createState() => _CadastrarApreensaoState();
}

class _CadastrarApreensaoState extends State<CadastrarApreensao> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastro de Apreensão',
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
            content: AdDadosStep(),
          ),
          Step(
            title: Text('Itens Apreendidos'),
            content: ItensApreendidosStep(),
          ),
        ],
      ),
    );
  }
}
