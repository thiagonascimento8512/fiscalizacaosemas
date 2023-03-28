import 'package:semasfiscalizacao/model/address_model.dart';

abstract class Pessoa {
  final String tipo; // "fisica" ou "juridica"
  final String identificacao; // 'Nome' ou 'Razão Social'
  final String name;
  final String document;
  final String documentNumber;
  final List<Address> addresses;

  Pessoa({
    required this.identificacao,
    required this.tipo,
    required this.name,
    required this.document,
    required this.documentNumber,
    this.addresses = const [],
  });
}
