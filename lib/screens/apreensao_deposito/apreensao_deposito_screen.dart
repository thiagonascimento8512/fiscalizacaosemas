import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/routes.dart';

class ApreensaoDepositoScreen extends StatefulWidget {
  const ApreensaoDepositoScreen({super.key});

  @override
  State<ApreensaoDepositoScreen> createState() =>
      _ApreensaoDepositoScreenState();
}

class _ApreensaoDepositoScreenState extends State<ApreensaoDepositoScreen> {
  void showOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text(
            'SELECIONE UM TIPO',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
          children: <Widget>[
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.teal,
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, Routes.apreensaoCadastro);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Apreensão'),
              ),
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, Routes.depositoCadastro);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Depósito'),
              ),
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, Routes.apreensaoDepositoCadastro);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Apreensão e Depósito'),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apreensão/Depósito'),
      ),
      body: const Center(
        child: Text('Apreensão/Depósito'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showOptions(context),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
