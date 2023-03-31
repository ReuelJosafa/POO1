import 'veiculo.dart';

class Frota {
  int cod;
  String descricao;
  List<Veiculo> veiculos;

  Frota({required this.cod, required this.descricao, required this.veiculos});

  void inserirVeiculo(Veiculo novoVeiculo) {
    veiculos.add(novoVeiculo);
  }

  void consultarDadosVeiculosPor(Veiculo veiculo) {
    veiculos
        .firstWhere((element) => element == veiculo)
        .imprimirTodasInformacoes();
  }
}
