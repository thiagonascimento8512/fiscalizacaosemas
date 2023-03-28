import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/data_info.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';
import 'package:semasfiscalizacao/model/autuado_pf_model.dart';
import 'package:semasfiscalizacao/providers/autuado_provider.dart';

import '../../../model/abstract_pessoa.dart';
import '../../../model/address_model.dart';
import '../../../model/autuado_pj_model.dart';

class AutuadoStep extends StatefulWidget {
  const AutuadoStep({super.key});

  @override
  State<AutuadoStep> createState() => _AutuadoStepState();
}

class _AutuadoStepState extends State<AutuadoStep> {
  final AutuadoProvider _autuadoProvider = AutuadoProvider();
  Address? _selectedAddress;

  @override
  Widget build(BuildContext context) {
    Pessoa autuado = _autuadoProvider.autuados[0];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/auto_infracao/autuado')
                .then((value) {
              if (value != null) {
                setState(() {
                  autuado = value as Pessoa;
                });
              }
            });
          },
          child: const Text('Selecionar Autuado'),
        ),
        24.height,
        Row(
          children: const [
            SectionTitle(title: 'Dados'),
          ],
        ),
        24.height,
        Row(
          children: [
            autuado.tipo == 'fisica'
                ? _buildAutuadoPF(autuado as AutuadoPF)
                : _buildAutuadoPJ(autuado as AutuadoPj),
          ],
        ),
        24.height,
        const Divider(),
        Row(
          children: const [
            SectionTitle(title: 'Endereço'),
          ],
        ),
        24.height,
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: autuado.addresses.length * 2 - 1,
          itemBuilder: (context, index) {
            if (index.isEven) {
              return RadioListTile(
                value: autuado.addresses[index ~/ 2],
                groupValue: _selectedAddress,
                onChanged: (Address? value) {
                  setState(() {
                    _selectedAddress = value;
                  });
                },
                title: _buildEndereco(autuado.addresses[index ~/ 2]),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(),
              );
            }
          },
        ),
      ],
    );
  }

  Widget _buildEndereco(Address address) {
    return Column(
      children: [
        Row(
          children: [
            DataInfo(title: 'Descrição da localização', value: address.address),
          ],
        ),
        16.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DataInfo(title: 'CEP', value: address.cep),
            DataInfo(title: 'Municipio', value: address.municipio),
          ],
        ),
      ],
    );
  }

  Widget _buildAutuadoPF(AutuadoPF autuado) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              DataInfo(title: 'Nome', value: autuado.name),
            ],
          ),
          24.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DataInfo(title: 'CPF', value: autuado.documentNumber),
              DataInfo(title: 'RG', value: autuado.rg ?? 'Não informado'),
              DataInfo(
                  title: 'Telefone',
                  value: autuado.telefone ?? 'Não informado'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAutuadoPJ(AutuadoPj autuado) {
    return Column(
      children: [
        Row(
          children: [
            DataInfo(title: 'Razão Social', value: autuado.name),
          ],
        ),
        Row(
          children: [
            DataInfo(title: 'CNPJ', value: autuado.documentNumber),
          ],
        ),
      ],
    );
  }
}
