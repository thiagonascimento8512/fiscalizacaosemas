import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../common_widgets/custom_fields.dart';
import '../../../common_widgets/section_title.dart';

class CadastroAddress extends StatefulWidget {
  const CadastroAddress({super.key});

  @override
  State<CadastroAddress> createState() => _CadastroAddressState();
}

class _CadastroAddressState extends State<CadastroAddress> {
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
            const SectionTitle(title: 'Cadastro de Endereço'),
            16.height,
            customTextField(
                label: 'Logradouro',
                hint: 'Rua, avenida, etc.',
                isRequired: true),
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
                      label: 'Complemento',
                      hint: 'Complemento do endereço',
                      isRequired: true),
                ),
              ],
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: customTextField(
                      label: 'Bairro',
                      hint: 'Bairro do endereço',
                      isRequired: true),
                ),
                16.width,
                Expanded(
                  child: customTextField(
                      label: 'CEP', hint: 'Apenas números', isRequired: true),
                ),
              ],
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: customTextField(
                      label: 'Município',
                      hint: 'Município do endereço',
                      isRequired: true),
                ),
                16.width,
                Expanded(
                  child: customTextField(
                      label: 'UF', hint: 'UF do endereço', isRequired: true),
                ),
              ],
            ),
            16.height,
            Row(
              children: [
                Expanded(
                  child: customTextField(
                      label: 'Ponto de Referência',
                      hint: 'Ponto de referência do endereço',
                      isRequired: true),
                ),
              ],
            ),
            16.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'),
                ),
                16.width,
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
