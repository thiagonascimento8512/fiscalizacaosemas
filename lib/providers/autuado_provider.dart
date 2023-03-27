import '../model/autuado_model.dart';

class AutuadoProvider {
  final List<Autuado> _autuados = [];

  List<Autuado> get autuados => _autuados;

  AutuadoProvider() {
    _autuados.add(Autuado(
      type: 'Nome',
      name: 'João da Silva',
      cpfCnpj: 'CPF',
      cpfCnpjNumber: '12345678900',
    ));

    _autuados.add(Autuado(
      type: 'Razão Social',
      name: 'Empresa de Software LTDA',
      cpfCnpj: 'CNPJ',
      cpfCnpjNumber: '123456789000001',
    ));

    _autuados.add(Autuado(
      type: 'Nome',
      name: 'Maria da Silva',
      cpfCnpj: 'CPF',
      cpfCnpjNumber: '12345678901',
    ));

    _autuados.add(Autuado(
      type: 'Razão Social',
      name: 'Empresa de Software LTDA',
      cpfCnpj: 'CNPJ',
      cpfCnpjNumber: '123456789000002',
    ));

    _autuados.add(Autuado(
      type: 'Nome',
      name: 'José da Silva',
      cpfCnpj: 'CPF',
      cpfCnpjNumber: '12345678902',
    ));
  }

  void addAutuado(Autuado autuado) {
    _autuados.add(autuado);
  }

  void removeAutuado(Autuado autuado) {
    _autuados.remove(autuado);
  }

  void clearAutuados() {
    _autuados.clear();
  }

  void updateAutuado(Autuado autuado) {
    final index = _autuados.indexWhere(
        (element) => element.cpfCnpjNumber == autuado.cpfCnpjNumber);
    _autuados[index] = autuado;
  }

  Autuado getAutuado(String cpfCnpjNumber) {
    return _autuados
        .firstWhere((element) => element.cpfCnpjNumber == cpfCnpjNumber);
  }
}
