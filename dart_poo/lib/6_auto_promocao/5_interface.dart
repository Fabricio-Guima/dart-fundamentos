// ignore: file_names
import 'package:dart_poo/6_auto_promocao/gol.dart';
import 'package:dart_poo/6_auto_promocao/uno.dart';

import 'carro.dart';

void main() {
  var gol = Gol();
  var uno = Uno();

//golCarro é do tipo Gol e gol tem um método exclusivo que só funciona em coisa do tipo gol, se eu tipei meu carro gol com o tipo Carro, mesmo eu sendo um tipo gol, meu método exclusivo tipoDeRodas() nao vai funcionar.
  Carro golCarro = Gol();
//Para funcionar, tenho que fazer assim:
// o uno nao tem este metodo, logo vai dar erro caso eu tente.
//bom sempre checkar se a variavel é do tipo Gol, caso seja, tu nao precisa fazer (golCarro as Gol).tipoDeRodas(); isso se chama autopromoção

  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

  //posso fazer checkagem ternária
  golCarro is Gol ? print(golCarro.tipoDeRodas()) : 'informação indisponível';

  print(gol.velocidadeMaxima());
  print(uno.velocidadeMaxima());
}
