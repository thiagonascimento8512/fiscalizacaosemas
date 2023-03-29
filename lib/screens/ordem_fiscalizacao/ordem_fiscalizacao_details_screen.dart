import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/model/ordem_fiscalizacao_model.dart';
import 'package:semasfiscalizacao/routes.dart';

import '../../common_widgets/data_info.dart';
import '../../common_widgets/section_title.dart';
import '../../model/demanda_model.dart';

class OrdemFiscalizacaoDetailsScreen extends StatefulWidget {
  const OrdemFiscalizacaoDetailsScreen(
      {super.key, required this.ordemFiscalizacao});
  final OrdemFiscalizacao ordemFiscalizacao;

  @override
  State<OrdemFiscalizacaoDetailsScreen> createState() =>
      _OrdemFiscalizacaoDetailsScreenState();
}

class _OrdemFiscalizacaoDetailsScreenState
    extends State<OrdemFiscalizacaoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    OrdemFiscalizacao ordem = widget.ordemFiscalizacao;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(ordem.codigo),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: [
                  // DADOS
                  Column(
                    children: [
                      const SectionTitle(title: 'Dados'),
                      24.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DataInfo(
                            title: 'Código',
                            value: ordem.codigo,
                            qtdeElementos: 3,
                          ),
                          DataInfo(
                            title: 'Setor de cadastro',
                            value: ordem.setorCadastro,
                            qtdeElementos: 3,
                          ),
                          DataInfo(
                            title: 'Data de cadastro',
                            value: ordem.dataCadastro,
                            qtdeElementos: 3,
                          ),
                        ],
                      ),
                      32.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DataInfo(
                              title: 'Período de fiscalização',
                              value: ordem.periodoFiscalizacao),
                        ],
                      ),
                      32.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DataInfo(
                              title: 'Descrição da atividade',
                              value: ordem.descricaoAtividade),
                        ],
                      ),
                    ],
                  ),

                  // DEMANDAS
                  Column(
                    children: [
                      48.height,
                      const Divider(),
                      16.height,
                      const SectionTitle(title: 'Demandas'),
                      24.height,
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: ordem.demandas.length,
                        itemBuilder: (context, index) {
                          Demanda demanda = ordem.demandas[index];
                          return GestureDetector(
                            child: Card(
                              child: _demandaInfo(
                                codigo: demanda.codigo,
                                municipio: demanda.municipio,
                                size: size,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                Routes.demanda,
                                arguments: demanda,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),

                  // EQUIPE
                  Column(
                    children: [
                      48.height,
                      const Divider(),
                      16.height,
                      const SectionTitle(title: 'Equipe de fiscalização'),
                      24.height,
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: ordem.equipe.length,
                        itemBuilder: (context, index) {
                          String nome = ordem.equipe[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Text(
                              nome,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _demandaInfo(
          {required String codigo, required String municipio, Size? size}) =>
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size != null ? size.width * 0.3 : null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Código',
                  ),
                  8.height,
                  Text(
                    codigo,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size != null ? size.width * 0.3 : null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Município',
                  ),
                  8.height,
                  Text(
                    municipio,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
      );
}
