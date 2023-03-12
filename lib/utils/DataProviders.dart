import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/model/screen_models.dart';
import 'package:semasfiscalizacao/screens/apreensao_deposito/apreensao_deposito_screen.dart';
import 'package:semasfiscalizacao/screens/auto_infracao/auto_infracao_screen.dart';
import 'package:semasfiscalizacao/screens/doacao/doacao_screen.dart';
import 'package:semasfiscalizacao/screens/ordem_fiscalizacao/ordem_fiscalizacao_screen.dart';

List<DrawerItemModel> getDrawerItems() {
  List<DrawerItemModel> drawerItems = [];
  drawerItems.add(DrawerItemModel(
    icon: Icons.reorder,
    title: 'Ordem de Fiscalização',
    widget: const OrdemFiscalizacaoScreen(),
  ));

  drawerItems.add(
    DrawerItemModel(
      icon: Icons.report,
      title: 'Auto de Infração',
      widget: const AutoInfracaoScreen(),
    ),
  );

  drawerItems.add(
    DrawerItemModel(
      icon: Icons.folder_open,
      title: 'Apreensão e Depósito',
      widget: const ApreensaoDepositoScreen(),
    ),
  );

  drawerItems.add(
    DrawerItemModel(
      icon: Icons.volunteer_activism,
      title: 'Doação',
      widget: const DoacaoScreen(),
    ),
  );

  return drawerItems;
}
