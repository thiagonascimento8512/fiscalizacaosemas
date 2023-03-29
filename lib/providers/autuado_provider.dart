import 'package:semasfiscalizacao/model/abstract_pessoa.dart';
import 'package:semasfiscalizacao/model/autuado_pf_model.dart';
import 'package:semasfiscalizacao/model/autuado_pj_model.dart';

import '../model/address_model.dart';

class AutuadoProvider {
  final List<Pessoa> _autuados = [];

  List<Pessoa> get autuados => _autuados;

  AutuadoProvider() {
    _autuados.add(AutuadoPF(
      tipo: 'fisica',
      identificacao: 'Nome',
      name: 'João da Silva',
      cpf: '12345678901',
      rg: '123456789',
      telefone: '11987654321',
      addresses: [
        Address(
          address:
              'Rua das Flores 123, Bairro Jardim Constância, Próximo à parada de ônibus',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
        Address(
          address: 'Rua das Flores, 123',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
      ],
    ));

    _autuados.add(AutuadoPj(
      tipo: 'juridica',
      identificacao: 'Razão Social',
      razaoSocial: 'Empresa de Software LTDA',
      cnpj: 'CNPJ',
      addresses: [
        Address(
          address:
              'Rua das Flores 123, Bairro Jardim Constância, Próximo à parada de ônibus',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
        Address(
          address: 'Rua das Flores, 123',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
      ],
    ));

    _autuados.add(AutuadoPF(
      tipo: 'fisica',
      identificacao: 'Nome',
      name: 'João da Silva',
      cpf: '12345678901',
      rg: '123456789',
      telefone: '11987654321',
      addresses: [
        Address(
          address:
              'Rua das Flores 123, Bairro Jardim Constância, Próximo à parada de ônibus',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
        Address(
          address: 'Rua das Flores, 123',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
      ],
    ));

    _autuados.add(AutuadoPj(
      tipo: 'juridica',
      identificacao: 'Razão Social',
      razaoSocial: 'Hardware & CIA LTDA',
      cnpj: '1234148576448',
      addresses: [
        Address(
          address:
              'Rua das Flores 123, Bairro Jardim Constância, Próximo à parada de ônibus',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
        Address(
          address: 'Rua das Flores, 123',
          cep: '12345-678',
          municipio: 'São Paulo',
          uf: 'SP',
        ),
      ],
    ));
  }
}
