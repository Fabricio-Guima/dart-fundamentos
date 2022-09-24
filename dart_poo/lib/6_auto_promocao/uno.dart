import 'package:dart_poo/5_interface/carro.dart';

class Uno implements Carro {
  @override
  String motor = '2.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 150;
  }
}
