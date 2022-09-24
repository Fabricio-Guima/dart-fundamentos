// ignore: file_names
import 'package:dart_poo/5_interface/gol.dart';
import 'package:dart_poo/5_interface/uno.dart';

import 'carro.dart';

void main() {
  var gol = Gol();
  var uno = Uno();

//golCarro é do tipo Gol e gol tem um método exclusivo que só funciona em coisa do tipo gol, se eu tipei meu carro gol com o tipo Carro, mesmo eu sendo um tipo gol, meu método exclusivo tipoDeRodas() nao vai funcionar. Para funcionar, tenho que tirar a tipagem Carro da frente de golCarro
  Carro golCarro = Gol();
  // golCarro.

  print(gol.velocidadeMaxima());
  print(uno.velocidadeMaxima());
}
