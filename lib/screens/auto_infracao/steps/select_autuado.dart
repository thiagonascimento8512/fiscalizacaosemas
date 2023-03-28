import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/providers/autuado_provider.dart';

import '../../../common_widgets/data_info.dart';
import '../../../model/abstract_pessoa.dart';

class SelectAutuado extends StatefulWidget {
  const SelectAutuado({super.key});

  @override
  State<SelectAutuado> createState() => _SelectAutuadoState();
}

class _SelectAutuadoState extends State<SelectAutuado> {
  final AutuadoProvider _autuadoProvider = AutuadoProvider();

  Pessoa? _selectedAutuado;

  @override
  Widget build(BuildContext context) {
    List<Pessoa> autuados = _autuadoProvider.autuados;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecionar Autuado'),
      ),
      body: ListView.builder(
        itemCount: autuados.length * 2 - 1,
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          if (index.isEven) {
            final int itemIndex = index ~/ 2;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: autuados[itemIndex] == _selectedAutuado
                      ? Colors.grey[300]
                      : Colors.transparent,
                  child: RadioListTile(
                    value: autuados[itemIndex],
                    groupValue: _selectedAutuado,
                    onChanged: (value) {
                      setState(() {
                        _selectedAutuado = value as Pessoa;
                      });
                    },
                    title: Column(
                      children: [
                        Row(
                          children: [
                            DataInfo(
                                title: autuados[itemIndex].identificacao,
                                value: autuados[itemIndex].name),
                          ],
                        ),
                        16.height,
                        Row(
                          children: [
                            DataInfo(
                                title: autuados[itemIndex].document,
                                value: autuados[itemIndex].documentNumber),
                          ],
                        ),
                      ],
                    ),
                  ),
                ).expand(),
              ],
            );
          } else {
            return const Divider();
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.grey, width: 1),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'VOLTAR',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _selectedAutuado);
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'SELECIONAR',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
