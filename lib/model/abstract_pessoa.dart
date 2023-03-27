abstract class Pessoa {
  final String tipo; // "fisica" ou "juridica"
  final String identificacao; // 'Nome' ou 'Razão Social'

  Pessoa({
    required this.identificacao,
    required this.tipo,
  });
}
