import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/section_title.dart';
import 'package:semasfiscalizacao/model/demanda_model.dart';

import '../../common_widgets/data_info.dart';

class DemandaScreen extends StatefulWidget {
  const DemandaScreen({super.key, required this.demanda});
  final Demanda demanda;

  @override
  State<DemandaScreen> createState() => _DemandaScreenState();
}

class _DemandaScreenState extends State<DemandaScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    Demanda demanda = widget.demanda;

    return Scaffold(
      appBar: AppBar(
        title: Text(demanda.codigo),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // DADOS
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: 'Dados'),
                  24.height,
                  Row(
                    children: [
                      DataInfo(
                        title: 'Código',
                        value: demanda.codigo,
                        qtdeElementos: 3,
                      ),
                      16.width,
                      DataInfo(
                        title: 'Tipo origem',
                        value: demanda.tipoOrigem,
                        qtdeElementos: 3,
                      ),
                      16.width,
                      DataInfo(
                        title: 'Categoria',
                        value: demanda.categoria,
                        qtdeElementos: 3,
                      ),
                    ],
                  ),
                  24.height,
                  DataInfo(
                    title: 'Identificador',
                    value: demanda.identificador,
                  ),
                  24.height,
                  Row(
                    children: [
                      DataInfo(
                        title: 'Solicitante',
                        value: demanda.solicitante,
                        qtdeElementos: 2,
                      ),
                      16.width,
                      DataInfo(
                        title: 'Setor de Cadastro',
                        value: demanda.setorCadastro,
                        qtdeElementos: 2,
                      ),
                    ],
                  ),
                  24.height,
                  Row(
                    children: [
                      DataInfo(
                        title: 'Data da Solicitação',
                        value: demanda.dataSolicitacao,
                        qtdeElementos: 2,
                      ),
                      16.width,
                      DataInfo(
                        title: 'Data do Vencimento',
                        value: demanda.dataVencimento,
                        qtdeElementos: 2,
                      ),
                    ],
                  ),
                  24.height,
                  DataInfo(
                    title: 'Objetivo',
                    value: demanda.objetivo,
                  ),
                  24.height,
                  DataInfo(
                    title: 'Descrição',
                    value: demanda.descricao,
                  ),
                ],
              ),

              // Local da Demanda
              24.height,
              const Divider(),
              24.height,
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: 'Local da Demanda'),
                  24.height,
                  DataInfo(
                    title: 'Descrição de acesso',
                    value: demanda.descricaoAcesso,
                  ),
                  16.height,
                  Row(
                    children: [
                      DataInfo(
                        title: 'Latitude',
                        value: demanda.latitude.toString(),
                        qtdeElementos: 2,
                      ),
                      16.width,
                      DataInfo(
                        title: 'Longitude',
                        value: demanda.longitude.toString(),
                        qtdeElementos: 2,
                      ),
                    ],
                  ),
                  16.height,
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 400, // Defina uma altura máxima para o mapa
                    ),
                    child: SizedBox.expand(
                      child: GoogleMap(
                        onMapCreated: (controller) {
                          _controller.complete(controller);
                        },
                        initialCameraPosition: CameraPosition(
                          target: LatLng(demanda.latitude, demanda.longitude),
                          zoom: 15.0,
                        ),
                        markers: {
                          Marker(
                            markerId: const MarkerId('marker_1'),
                            position:
                                LatLng(demanda.latitude, demanda.longitude),
                          ),
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
