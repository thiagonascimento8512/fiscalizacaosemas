import 'abstract_pessoa.dart';

class AutuadoPj extends Pessoa {
  final String razaoSocial;
  final String cnpj;

  AutuadoPj({
    required this.razaoSocial,
    required this.cnpj,
    required String identificacao,
    required String tipo,
    addresses = const [],
  }) : super(
          identificacao: identificacao,
          tipo: tipo,
          addresses: addresses,
        );
}
