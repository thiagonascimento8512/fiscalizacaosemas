import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/apreensao/model/item_apreendido.dart';

class ItensApreendidosStep extends StatefulWidget {
  const ItensApreendidosStep({super.key});

  @override
  State<ItensApreendidosStep> createState() => _ItensApreendidosStepState();
}

class _ItensApreendidosStepState extends State<ItensApreendidosStep> {
  List<ItemApreendido> itensApreendidos = [];

  @override
  void initState() {
    super.initState();
    itensApreendidos = [
      ItemApreendido(
        tipo: 'Animais Silvestres',
        nome: 'Tatu Bola',
        quantidade: '2',
        unidade: 'Unidade',
        valor: 'R\$ 1.000,00',
        descricao: ' --- ',
      ),
      ItemApreendido(
        tipo: 'Animais Silvestres',
        nome: 'Tatu Bola',
        quantidade: '2',
        unidade: 'Unidade',
        valor: 'R\$ 1.000,00',
        descricao: ' --- ',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Itens Apreendidos'),
        16.height,
        ElevatedButton(
          onPressed: () {},
          child: const Text('Adicionar Item'),
        ),
        16.height,
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itensApreendidos.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item ${index + 1}',
                    style: boldTextStyle(),
                  ),
                  8.height,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Tipo: ${itensApreendidos[index].tipo}',
                          style: secondaryTextStyle(),
                        ),
                      ),
                      16.width,
                      Expanded(
                        child: Text(
                          'Nome: ${itensApreendidos[index].nome}',
                          style: secondaryTextStyle(),
                        ),
                      ),
                    ],
                  ),
                  8.height,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Quantidade: ${itensApreendidos[index].quantidade}',
                          style: secondaryTextStyle(),
                        ),
                      ),
                      16.width,
                      Expanded(
                        child: Text(
                          'Unidade: ${itensApreendidos[index].unidade}',
                          style: secondaryTextStyle(),
                        ),
                      ),
                    ],
                  ),
                  8.height,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Valor: ${itensApreendidos[index].valor}',
                          style: secondaryTextStyle(),
                        ),
                      ),
                      16.width,
                      Expanded(
                        child: Text(
                          'Descrição: ${itensApreendidos[index].descricao}',
                          style: secondaryTextStyle(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
