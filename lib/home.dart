import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ordem de Fiscalização'),
          actions: [
            IconButton(
              icon: themeManager.isDarkMode
                  ? const Icon(Icons.light_mode)
                  : const Icon(Icons.dark_mode),
              onPressed: () {
                setState(() {
                  themeManager.themeMode = themeManager.isDarkMode
                      ? ThemeMode.light
                      : ThemeMode.dark;
                });
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
