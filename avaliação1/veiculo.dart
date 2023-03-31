import 'dart:math';

import 'classificacao.dart';
import 'posicao.dart';

class Veiculo {
  int? cod;
  String nome;
  Classificacao classificacao;
  Posicao posicao;
  String situacaoMecanica;
  double nivelTanque;
  int velocidade;

  Veiculo({
    this.cod,
    required this.nome,
    required this.classificacao,
    required this.posicao,
    required this.situacaoMecanica,
    required this.nivelTanque,
    required this.velocidade,
  }) {
    if (cod == null) {
      this.cod = Random().nextInt(100);
    }
  }

  void bloquearVeiculo() {
    while (velocidade > 0) {
      velocidade = velocidade - 3;
    }
  }

  bool get estaEmMovimento => velocidade > 0;

  String get posicaoAtual => posicao.coordenadaFormatada;

  void imprimirPosicao() {
    print(
        'O veículo $nome de código $cod está localizado nas coordenadas $posicaoAtual');
  }

  void imprimirSituacaoMecanica() {
    print('A situação do veículo $nome de código $cod está $situacaoMecanica');
  }

  void imprimirNivelTanque() {
    print('O nível do tanque do veículo $nome de código $cod está ');
  }

  void imprimirVelocidade() {
    print('A velocidade do veículo $nome de código $cod é de $velocidade km/h');
  }

  void imprimirTodasInformacoes() {
    print('Veículo $nome de código $cod\n' +
        'Classificação: ${classificacao.tipo}\n' +
        'Coordenadas da localização: $posicaoAtual\n' +
        'Situação mecânica: $situacaoMecanica\n' +
        'Nível do tanque: ${nivelTanque.toStringAsFixed(2)} litro(s)\n' +
        'Velocidade: $velocidade km/h');
  }
}
