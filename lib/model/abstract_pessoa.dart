import 'package:semasfiscalizacao/model/address_model.dart';

abstract class Pessoa {
  final String tipo; // "fisica" ou "juridica"
  final String identificacao; // 'Nome' ou 'Razão Social'
  final List<Address> addresses;

  Pessoa({
    required this.identificacao,
    required this.tipo,
    this.addresses = const [],
  });
}
