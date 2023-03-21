import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/home_screen.dart';

import 'model/ordem_fiscalizacao_model.dart';
import 'screens/ordem_fiscalizacao/ordem_fiscalizacao_details_screen.dart';
import 'screens/ordem_fiscalizacao/ordem_fiscalizacao_screen.dart';

class Routes {
  static const String home = '/';
  static const String ordemFiscalizacao = '/ordem_fiscalizacao';
  static const String ordemFiscalizacaoDetails = '/ordem_fiscalizacao/detalhes';

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
