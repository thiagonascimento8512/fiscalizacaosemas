import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/providers/ordem_fiscalizacao_provider.dart';

import '../../model/ordem_fiscalizacao_model.dart';
import '../../routes.dart';

class OrdemFiscalizacaoScreen extends StatefulWidget {
  const OrdemFiscalizacaoScreen({super.key});

  @override
  State<OrdemFiscalizacaoScreen> createState() =>
      _OrdemFiscalizacaoScreenState();
}

class _OrdemFiscalizacaoScreenState extends State<OrdemFiscalizacaoScreen> {
  List<OrdemFiscalizacao> ordensFiscalizacao =
      OrdemFiscalizacaoProvider().ordensFiscalizacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ordem de Fiscalização'),
      ),
      body: ListView.builder(
        itemCount: ordensFiscalizacao.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        ordensFiscalizacao[index].status == 'Sincronizado'
                            ? Icons.check_circle
                            : Icons.timelapse,
                        color:
                            ordensFiscalizacao[index].status == 'Sincronizado'
                                ? Colors.green
                                : Colors.amber,
                      ),
                      16.width,
                      Text(
                        'Nº: ${ordensFiscalizacao[index].codigo}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(ordensFiscalizacao[index].periodoFiscalizacao),
                  Text(ordensFiscalizacao[index].descricaoAtividade),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
              // subtitle: Text(ordensFiscalizacao[index].status),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.ordemFiscalizacaoDetails,
                  arguments: ordensFiscalizacao[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
