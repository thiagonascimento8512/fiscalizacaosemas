class Demanda {
  String codigoOrdemFiscalizacao;
  String codigo;
  String municipio;
  String tipoOrigem;
  String categoria;
  String identificador;
  String solicitante;
  String setorCadastro;
  String dataSolicitacao;
  String dataVencimento;
  String objetivo;
  String descricao;
  double latitude;
  double longitude;
  String descricaoAcesso;

  Demanda({
    required this.codigoOrdemFiscalizacao,
    required this.codigo,
    required this.municipio,
    required this.tipoOrigem,
    required this.categoria,
    required this.identificador,
    required this.solicitante,
    required this.setorCadastro,
    required this.dataSolicitacao,
    required this.dataVencimento,
    required this.objetivo,
    required this.descricao,
    required this.latitude,
    required this.longitude,
    required this.descricaoAcesso,
  });
}
