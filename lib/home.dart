import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/common_widgets/smart_switch.dart';

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
        drawer: Drawer(
          backgroundColor: Colors.teal[400],
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'FISCALIZAÇÃO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                    listTile(
                        'Ordem de Fiscalização', Icons.receipt_long, () {}),
                    listTile('Auto de Infração', Icons.report, () {}),
                    listTile('Apreensão e Depósito', Icons.source, () {}),
                    listTile('Doação', Icons.volunteer_activism, () {}),
                    const Divider(),
                    16.height,
                    Text(
                      'Configurações',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    16.height,
                    ListTile(
                      leading: SizedBox(
                        width: 100,
                        child: SmartSwitch(
                          size: SwitchSize.large,
                          defaultActive: themeManager.isDarkMode,
                          activeColor: Colors.white,
                          inActiveColor: Colors.black,
                          onChanged: (bool value) {
                            setState(() {
                              themeManager.themeMode = themeManager.isDarkMode
                                  ? ThemeMode.light
                                  : ThemeMode.dark;
                            });
                          },
                        ),
                      ),
                      title: const Text(
                        'Modo Escuro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.teal[400],
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'SINCRONIZAR',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Ordem de Fiscalização'),
          actions: const [],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  Widget listTile(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
    );
  }
}
