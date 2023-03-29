import 'abstract_pessoa.dart';

class AutuadoPj extends Pessoa {
  AutuadoPj({
    required String razaoSocial,
    required String cnpj,
    required String identificacao,
    required String tipo,
    addresses = const [],
  }) : super(
          identificacao: identificacao,
          name: razaoSocial,
          document: 'CNPJ',
          documentNumber: cnpj,
          tipo: tipo,
          addresses: addresses,
        );
}
