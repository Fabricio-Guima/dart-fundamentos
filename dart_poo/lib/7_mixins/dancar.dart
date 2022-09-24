import 'package:dart_poo/7_mixins/artista.dart';

// posso falar que o mixin Dancar só pode ser usado se a classe filha  herdar de Artista
//mixin nao SE ESTENDE
mixin Dancar on Artista {
  String dancar() {
    return 'Dança gatinho, dança!';
  }

  //farei dançar sobre escrever o método habilidade de Artista

  @override
  String habilidade() {
    return 'habilidade sobrescrita por Dancar';
  }
}
