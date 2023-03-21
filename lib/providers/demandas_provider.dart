import 'package:semasfiscalizacao/model/demanda_model.dart';

class DemandasProvider {
  List<Demanda> demandas = [];

  DemandasProvider() {
    Demanda demanda = Demanda(
      codigoOrdemFiscalizacao: '0-23-02/080',
      codigo: 'D-18-08/645',
      municipio: 'Goianésia',
      tipoOrigem: 'Documento',
      categoria: 'Demanda Interna',
      identificador:
          '2018/0000038006 - MEMO-N-1235097-2015-GEECOS-CIND-DILAP-SAGRA',
      solicitante: 'SAGRA',
      setorCadastro:
          'GERAD - Gerência Fiscalização de Atividades Poluidoras e Degradadoras',
      dataSolicitacao: '22/08/2018',
      dataVencimento: '22/08/2018',
      objetivo: 'Analisar o Documento',
      descricao: 'Não atendimento de notificação',
      latitude: -3.9525,
      longitude: -48.9661,
      descricaoAcesso: 'ROD. PA 150, KM 166, S/N, CENTRO. CEP 68.639-000',
    );

    Demanda demanda2 = Demanda(
      codigoOrdemFiscalizacao: '0-23-02/080',
      codigo: 'D-18-08/646',
      municipio: 'Moju',
      tipoOrigem: 'Documento',
      categoria: 'Demanda Interna',
      identificador:
          '2018/0000038006 - MEMO-N-1235097-2015-GEECOS-CIND-DILAP-SAGRA',
      solicitante: 'SAGRA',
      setorCadastro:
          'GERAD - Gerência Fiscalização de Atividades Poluidoras e Degradadoras',
      dataSolicitacao: '22/08/2018',
      dataVencimento: '22/08/2018',
      objetivo: 'Analisar o Documento',
      descricao: 'Não atendimento de notificação',
      latitude: -3.9525,
      longitude: -48.9661,
      descricaoAcesso: 'ROD. PA 150, KM 166, S/N, CENTRO. CEP 68.639-000',
    );

    Demanda demanda3 = Demanda(
      codigoOrdemFiscalizacao: '0-23-02/080',
      codigo: 'D-18-08/647',
      municipio: 'São Félix do Xingu',
      tipoOrigem: 'Documento',
      categoria: 'Demanda Interna',
      identificador:
          '2018/0000038006 - MEMO-N-1235097-2015-GEECOS-CIND-DILAP-SAGRA',
      solicitante: 'SAGRA',
      setorCadastro:
          'GERAD - Gerência Fiscalização de Atividades Poluidoras e Degradadoras',
      dataSolicitacao: '22/08/2018',
      dataVencimento: '22/08/2018',
      objetivo: 'Analisar o Documento',
      descricao: 'Não atendimento de notificação',
      latitude: -3.9525,
      longitude: -48.9661,
      descricaoAcesso: 'ROD. PA 150, KM 166, S/N, CENTRO. CEP 68.639-000',
    );

    demandas.add(demanda);
    demandas.add(demanda2);
    demandas.add(demanda3);
  }

  void addDemanda(Demanda demanda) {
    demandas.add(demanda);
  }

  void removeDemanda(Demanda demanda) {
    demandas.remove(demanda);
  }

  List<Demanda> getDemandas() {
    return demandas;
  }

  void clearDemandas() {
    demandas.clear();
  }
}
