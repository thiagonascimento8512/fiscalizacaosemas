import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';

class CadastroTestemunhaScreen extends StatefulWidget {
  const CadastroTestemunhaScreen({super.key});

  @override
  State<CadastroTestemunhaScreen> createState() =>
      _CadastroTestemunhaScreenState();
}

class _CadastroTestemunhaScreenState extends State<CadastroTestemunhaScreen> {
  String _selectedMunicipio = 'Selecione';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            16.height,
            const SectionTitle(title: 'Cadastro de Testemunha'),
            16.height,
            customTextField(
                label: 'Nome', hint: 'Nome completo', isRequired: true),
            16.height,
            Row(
              children: [
                Expanded(
                  child: customTextField(
                      label: 'CPF', hint: 'Apenas números', isRequired: true),
                ),
                16.width,
                Expanded(
                  child: customTextField(
                      label: 'RG', hint: 'Apenas números', isRequired: true),
                ),
              ],
            ),
            16.height,
            customTextField(
              label: 'Logradouro',
              hint: 'Rua, avenida, etc.',
              isRequired: true,
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: customTextField(
                      label: 'Número',
                      hint: 'Número do endereço',
                      isRequired: true),
                ),
                16.width,
                Expanded(
                  child: customTextField(
                      label: 'Complemento', hint: 'Apto, bloco, etc.'),
                ),
                16.width,
                Expanded(
                  child: customTextField(
                      label: 'Bairro',
                      hint: 'Bairro do endereço',
                      isRequired: true),
                ),
              ],
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: customTextField(
                      label: 'CEP', hint: 'Apenas números', isRequired: true),
                ),
                16.width,
                Expanded(
                  child: customTextField(
                      label: 'Estado',
                      hint: 'Estado do endereço',
                      isRequired: true),
                ),
                16.width,
                Expanded(
                  child: customDropdownButtonFormField(
                    label: 'Município',
                    options: ['Selecione', 'Altamira', 'Belém', 'Ananideua'],
                    value: _selectedMunicipio,
                    isRequired: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedMunicipio = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            24.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    padding: const EdgeInsets.all(16.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                16.width,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Adicionar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
