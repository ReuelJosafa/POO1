class Posicao {
  double lat;
  double long;

  Posicao({required this.lat, required this.long});

  String get coordenadaFormatada => '$lat, $long';
}
