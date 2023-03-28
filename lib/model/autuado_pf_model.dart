import 'package:semasfiscalizacao/model/abstract_pessoa.dart';

class AutuadoPF extends Pessoa {
  String? rg;
  String? telefone;

  AutuadoPF({
    required String name,
    required String cpf,
    this.rg,
    this.telefone,
    required String identificacao,
    required String tipo,
    addresses = const [],
  }) : super(
          identificacao: identificacao,
          name: name,
          document: 'CPF',
          documentNumber: cpf,
          tipo: tipo,
          addresses: addresses,
        );
}
