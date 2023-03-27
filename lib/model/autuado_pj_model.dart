import 'abstract_pessoa.dart';
import 'address_model.dart';

class AutuadoPj extends Pessoa {
  final String razaoSocial;
  final String cnpj;
  final List<Address> addresses;

  AutuadoPj({
    required this.razaoSocial,
    required this.cnpj,
    required String identificacao,
    required String tipo,
    this.addresses = const [],
  }) : super(
          identificacao: identificacao,
          tipo: tipo,
        );
}
