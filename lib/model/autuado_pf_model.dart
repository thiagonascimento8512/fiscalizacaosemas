import 'package:semasfiscalizacao/model/abstract_pessoa.dart';
import 'package:semasfiscalizacao/model/address_model.dart';

class AutuadoPF extends Pessoa {
  final String name;
  String? rg;
  final String cpf;
  String? telefone;
  final List<Address> addresses;

  AutuadoPF({
    required this.name,
    required this.cpf,
    this.rg,
    this.telefone,
    required String identificacao,
    required String tipo,
    this.addresses = const [],
  }) : super(
          identificacao: identificacao,
          tipo: tipo,
        );
}
