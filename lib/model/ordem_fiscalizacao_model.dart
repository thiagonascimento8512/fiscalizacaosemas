import 'demanda_model.dart';

class OrdemFiscalizacao {
  String codigo;
  String status;
  String setorCadastro;
  String dataCadastro;
  String periodoFiscalizacao;
  String descricaoAtividade;
  List<Demanda>? demandas;
  List<String> equipe;

  OrdemFiscalizacao({
    required this.codigo,
    this.status = 'Sincronizado',
    required this.setorCadastro,
    required this.dataCadastro,
    required this.periodoFiscalizacao,
    required this.descricaoAtividade,
    this.demandas,
    required this.equipe,
  });
}
