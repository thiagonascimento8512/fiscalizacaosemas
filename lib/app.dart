import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/routes.dart';

import 'theme/theme_manager.dart';

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiscalização SEMAS PA',
      debugShowCheckedModeBanner: false,
      theme: themeManager.lightTheme,
      darkTheme: themeManager.darkTheme,
      themeMode: themeManager.themeMode,
      initialRoute: Routes.apreensaoDeposito,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
