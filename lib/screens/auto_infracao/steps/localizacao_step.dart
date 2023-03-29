import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/custom_fields.dart';
import 'package:semasfiscalizacao/common_widgets/data_info.dart';

class LocalizacaoStep extends StatefulWidget {
  const LocalizacaoStep({super.key});

  @override
  State<LocalizacaoStep> createState() => _LocalizacaoStepState();
}

class _LocalizacaoStepState extends State<LocalizacaoStep> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  LatLng _lastMapPosition = const LatLng(-1.409612, -48.468992);

  void _centerView() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: _lastMapPosition,
          zoom: 15.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Localização',
              style: boldTextStyle(),
            ),
            Text(
              'Clique no mapa para selecionar a localização',
              style: secondaryTextStyle(),
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
              onTap: (position) {
                setState(() {
                  _lastMapPosition = position;
                  _centerView();
                });
              },
              onMapCreated: (controller) {
                _controller.complete(controller);
              },
              initialCameraPosition: CameraPosition(
                target: _lastMapPosition,
                zoom: 15.0,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('marker_1'),
                  position: _lastMapPosition,
                ),
              },
            ),
          ),
        ),
        16.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DataInfo(
              title: 'Latitude',
              value: _lastMapPosition.latitude.toString(),
            ),
            48.width,
            DataInfo(
              title: 'Longitude',
              value: _lastMapPosition.longitude.toString(),
            ),
            48.width,
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: defaultBoxShadow(),
              ),
              child: IconButton(
                icon: const Icon(Icons.my_location),
                onPressed: _centerView,
              ),
            ),
          ],
        ),
        24.height,
        customTextField(
          label: 'Descrição de acesso',
          hint: 'Ex: Próximo a...',
          lines: 3,
        )
      ],
    );
  }
}
