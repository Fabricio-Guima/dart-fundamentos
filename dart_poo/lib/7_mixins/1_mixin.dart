import 'package:dart_poo/7_mixins/joao.dart';

void main() {
  var joao = Joao();
//posso usar os métodos dos mixins a vontade
  print(joao.dancar());
  print(joao.cantar());
  print(joao.habilidade()); //habilidade sobrescrita por Dancar
}
