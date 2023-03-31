import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/apreensao_deposito_screen.dart';

import 'home_screen.dart';
import 'model/demanda_model.dart';
import 'model/ordem_fiscalizacao_model.dart';
import 'screens/auto_infracao/auto_infracao_screen.dart';
import 'screens/auto_infracao/cadastrar_auto_infracao_screen.dart';
import 'screens/auto_infracao/widgets/select_autuado.dart';
import 'screens/ordem_fiscalizacao/demanda_screen.dart';
import 'screens/ordem_fiscalizacao/ordem_fiscalizacao_details_screen.dart';
import 'screens/ordem_fiscalizacao/ordem_fiscalizacao_screen.dart';

class Routes {
  static const String home = '/';
  static const String ordemFiscalizacao = '/ordem_fiscalizacao';
  static const String ordemFiscalizacaoDetails = '/ordem_fiscalizacao/detalhes';
  static const String demanda = '/ordem_fiscalizacao/demanda';
  static const String autoInfracao = '/auto_infracao';
  static const String autoInfracaoCadastrar = '/auto_infracao/cadastrar';
  static const String autoInfracaoSelectAutuado = '/auto_infracao/autuado';
  static const String apreensaoDeposito = '/apreensao_deposito';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case ordemFiscalizacao:
        return MaterialPageRoute(
          builder: (_) => const OrdemFiscalizacaoScreen(),
        );
      case ordemFiscalizacaoDetails:
        return MaterialPageRoute(
          builder: (_) => OrdemFiscalizacaoDetailsScreen(
            ordemFiscalizacao: settings.arguments as OrdemFiscalizacao,
          ),
        );
      case demanda:
        return MaterialPageRoute(
          builder: (_) => DemandaScreen(
            demanda: settings.arguments as Demanda,
          ),
        );
      case autoInfracao:
        return MaterialPageRoute(
          builder: (_) => const AutoInfracaoScreen(),
        );
      case autoInfracaoCadastrar:
        return MaterialPageRoute(
          builder: (_) => const CadastrarAutoInfracaoScreen(),
        );
      case autoInfracaoSelectAutuado:
        return MaterialPageRoute(
          builder: (_) => const SelectAutuado(),
        );
      case apreensaoDeposito:
        return MaterialPageRoute(
          builder: (_) => const ApreensaoDepositoScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
