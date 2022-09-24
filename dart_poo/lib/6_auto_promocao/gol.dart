import 'package:dart_poo/6_auto_promocao/carro.dart';

class Gol implements Carro {
  @override
  String motor = '1.0';

  @override
  int portas = 2;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 160;
  }

//criei um método exclusivo de gol e só funciona em algo do tipo gol e nao em algo do tipo Carro
  String tipoDeRodas() {
    return 'Esportivas';
  }
}
