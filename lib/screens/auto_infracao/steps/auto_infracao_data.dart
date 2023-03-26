import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';
import 'package:semasfiscalizacao/model/testemunha_model.dart';
import 'package:semasfiscalizacao/screens/auto_infracao/widgets/cadastro_testemunhas_screen.dart';

import '../../../common_widgets/data_info.dart';

class AutoInfracaoData extends StatefulWidget {
  const AutoInfracaoData({super.key});

  @override
  State<AutoInfracaoData> createState() => _AutoInfracaoDataState();
}

class _AutoInfracaoDataState extends State<AutoInfracaoData> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<Testemunha> _testemunhas = [
    Testemunha(
      nome: 'Fulano de Tal',
      cpf: '9983966298',
      rg: '7823193',
      logradouro: 'Rua ABC Rua ABC Rua ABC Rua ABC Rua ABC Rua ABC Rua ABC',
      numero: '123',
      complemento: 'Casa',
      bairro: 'Centro',
      municipio: 'País das Maravilhas',
      uf: 'PM',
      cep: '12345678',
    )
  ];

  String _selectedOption = 'Selecione um tipo de infração';
  String _selectedAgente = 'Selecione um agente de fiscalização';

  final List<String> _options = [
    'Selecione um tipo de infração',
    'Fauna',
    'Flora',
    'Mineração',
    'Pesca',
    'Poluição/Degradação',
  ];

  final List<String> _agentes = [
    'Selecione um agente de fiscalização',
    'Ademir Marinha de Lima',
    'Alessandra de Aquino',
    'Andrezza Lorena Queiroz Pamplona',
  ];

  void showTestemunhaDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return const CadastroTestemunhaScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customDropdownButtonFormField(
                  label: 'Tipo de infração',
                  isRequired: true,
                  options: _options,
                  value: _selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption = newValue!;
                    });
                  }).expand(),
              16.width,
              customTextField(
                label: 'Ordem de fiscalização',
                hint: 'Selecione',
                isRequired: true,
              ).expand(),
            ],
          ),
          16.height,
          customDropdownButtonFormField(
            label: 'Agente de fiscalização',
            isRequired: true,
            options: _agentes,
            value: _selectedAgente,
            onChanged: (String? newValue) {
              setState(() {
                _selectedAgente = newValue!;
              });
            },
          ),
          16.height,
          customTextField(
            label: 'Atividade',
            isRequired: true,
            lines: 3,
            hint: 'Descreva a atividade',
          ),
          16.height,
          customTextField(
            label: 'Descrição da infração',
            isRequired: true,
            lines: 3,
            hint: 'Descreva a infração',
          ),
          24.height,
          const SectionTitle(title: 'Testemunhas'),
          16.height,
          ..._testemunhas.map(_testemunhasWidget).toList(),
          16.height,
          ElevatedButton(
            onPressed: showTestemunhaDialog,
            child: const Text('Adicionar testemunha'),
          ),
        ],
      ),
    );
  }

  Widget _testemunhasWidget(Testemunha testemunha) => Column(
        children: [
          const Divider(),
          12.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DataInfo(
                  title: 'Nome',
                  value: testemunha.nome,
                ),
              ),
              16.width,
              Expanded(
                child: DataInfo(
                  title: 'CPF',
                  value: testemunha.cpf,
                ),
              ),
              16.width,
              Expanded(
                child: DataInfo(
                  title: 'RG',
                  value: testemunha.rg,
                ),
              ),
            ],
          ),
          24.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DataInfo(
                  title: 'Logradouro',
                  value: testemunha.logradouro,
                ),
              ),
              const SizedBox(width: 48),
              DataInfo(
                title: 'Número',
                value: testemunha.numero,
              ),
              const SizedBox(width: 48),
              DataInfo(
                title: 'Complemento',
                value: testemunha.complemento,
              ),
              const SizedBox(width: 48),
              DataInfo(
                title: 'Bairro',
                value: testemunha.bairro,
              ),
            ],
          ),
          24.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DataInfo(
                title: 'Município',
                value: testemunha.municipio,
              ),
              16.width,
              DataInfo(
                title: 'UF',
                value: testemunha.uf,
              ),
              16.width,
              DataInfo(
                title: 'CEP',
                value: testemunha.cep,
              ),
            ],
          ),
          24.height,
          const Divider(),
        ],
      );
}
