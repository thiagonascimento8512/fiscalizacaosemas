import 'package:semasfiscalizacao/model/abstract_pessoa.dart';

class AutuadoPF extends Pessoa {
  final String name;
  String? rg;
  final String cpf;
  String? telefone;

  AutuadoPF({
    required this.name,
    required this.cpf,
    this.rg,
    this.telefone,
    required String identificacao,
    required String tipo,
    addresses = const [],
  }) : super(
          identificacao: identificacao,
          tipo: tipo,
          addresses: addresses,
        );
}
