import 'package:semasfiscalizacao/providers/demandas_provider.dart';

import '../model/ordem_fiscalizacao_model.dart';

class OrdemFiscalizacaoProvider {
  DemandasProvider demandasProvider = DemandasProvider();
  List<OrdemFiscalizacao> ordensFiscalizacao = [];

  OrdemFiscalizacaoProvider() {
    OrdemFiscalizacao ordemFiscalizacao = OrdemFiscalizacao(
      codigo: '0-23-02/080',
      setorCadastro: 'GEFLOR - Gerência de Fiscalização Florestal',
      dataCadastro: '22/08/2018',
      periodoFiscalizacao: '22/08/2018 a 22/08/2018',
      descricaoAtividade: 'Não atendimento de notificação',
      demandas: demandasProvider.demandas,
      equipe: [
        'Ademir Marinho de Lima',
        'Alessandra de Aquino',
        'Andrezza Lorena Queiroz Pamplona',
      ],
    );

    OrdemFiscalizacao ordemFiscalizacao2 = OrdemFiscalizacao(
      codigo: '0-23-02/081',
      setorCadastro: 'GEFLOR - Gerência de Fiscalização Florestal',
      dataCadastro: '22/08/2018',
      periodoFiscalizacao: '22/08/2018 a 22/08/2018',
      descricaoAtividade: 'Não atendimento de notificação',
      demandas: demandasProvider.demandas,
      equipe: [
        'Ademir Marinho de Lima',
        'Alessandra de Aquino',
        'Andrezza Lorena Queiroz Pamplona',
      ],
    );

    ordensFiscalizacao.add(ordemFiscalizacao);
    ordensFiscalizacao.add(ordemFiscalizacao2);
  }
}
