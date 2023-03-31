import 'classificacao.dart';
import 'frota.dart';
import 'posicao.dart';
import 'veiculo.dart';

// Para executar o código abaixo abra o terminal no diretório desta pasta e execute o comando dart main.dart
// Vc precisará apenas ter configurado o Dart SDK -> https://dart.dev/get-dart

/* Exercício Avaliativo
  Uma empresa de logística necessita de um programa para determinar o apontamento
  dos veículos de sua frota de frete. Esses veículos são classificados em leves e pesados,
  mas em um futuro próximo poderão haver novos tipos. Basicamente a empresa de logística gostaria 
  de uma forma de consulta dados do veículos em movimento tais como: posição, situação da mecânica 
  do veículo, tanque de combustível, velocidade. Além disso, em caso de suspeitas ela também gostaria 
  de enviar um comando para o veículo ser bloqueado. */

void main() {
  final c1 = Classificacao(codigo: 1, tipo: 'leves');
  final c2 = Classificacao(codigo: 2, tipo: 'pesados');

  final p1 = Posicao(lat: -26.226982886887544, long: -51.048281276038296);
  final p2 = Posicao(lat: -26.157327, long: -50.883358);
  final p3 = Posicao(lat: -25.723296, long: -49.317659);

  final v1 = Veiculo(
      nome: 'Mercedes-Benz',
      classificacao: c1,
      posicao: p1,
      situacaoMecanica: 'boa',
      nivelTanque: 0.70,
      velocidade: 75);

  final v2 = Veiculo(
      nome: 'Hyundai',
      classificacao: c1,
      posicao: p2,
      situacaoMecanica: 'ótima',
      nivelTanque: 0.50,
      velocidade: 125);

  final v3 = Veiculo(
      nome: 'Volvo',
      classificacao: c2,
      posicao: p3,
      situacaoMecanica: 'média',
      nivelTanque: 0.63,
      velocidade: 25);

  Frota frota =
      Frota(cod: 1, descricao: 'Frota Curitiba', veiculos: [v1, v2, v3]);

  frota.consultarDadosVeiculosPor(v1);
}
