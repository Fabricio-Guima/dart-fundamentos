// ignore: file_names
import 'package:dart_poo/1_classes/camiseta.dart';

void main() {
  var camisetaNike = new Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'branca'; // aqui é o set para setar a cor
  camisetaNike.marca = 'Nike';

  print(camisetaNike.tamanho);
  print(camisetaNike.cor); // aqui é o get que mostrar a cor que foi setada
  print(camisetaNike.marca);
  print(camisetaNike.tipoDeLavagem('Nike'));

  print(Camiseta.nome);
  print(Camiseta.getName());

  var camisetaAdidas = new Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'preta';
  camisetaAdidas.marca = 'Adidas';

  print(camisetaAdidas.tamanho);
  print(camisetaAdidas.cor);
  print(camisetaAdidas.marca);
  print(camisetaNike.tipoDeLavagem('Adidas'));
}
