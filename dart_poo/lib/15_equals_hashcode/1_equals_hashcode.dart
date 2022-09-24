// ignore: file_names

import 'package:dart_poo/15_equals_hashcode/pessoa.dart';

void main() {
  var p1 = Pessoa(
      nome: 'Fabrício', email: 'fsgkof@gmail.com', telefone: '9999-9999');
  var p2 = Pessoa(
      nome: 'Fabrício', email: 'fsgkof@gmail.com', telefone: '9999-9999');

//se eu disse que p2 é igual a p1, aí sim eles serão iguais
  // p2 = p1;
// mesmo os objetos p1 e p2 sendo iguais, eles nao sao iguais

//após implementar o hascode com todos os campos da classe, agora faça isso e compare se elas sao iguais até em seu dna kkk

  print(p1.hashCode);
  print(p2.hashCode);
  //repare que eles compartilham o mesmo endereco de memória prq sao iguais, caso eu mude algo nos atributos, eles nao serão mais iguais e cada terá seu próprio endereço de memória

  //como printar um objeto p1 ou p2 por exemplo para mostrar todos os seus atributos ? use o toString para isso

  print(p1);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }

  /////////////////////////////////
  // String nome = 'Fafa';
  // String nome2 = 'Fafa';

  // if (nome == nome2) {
  //   print('É igual');
  // } else {
  //   print('Não é igual');
  // }

  //equals e tostring tem que ser implementados sempre juntos!!!!!!!!!!!!!!!!!!!!!!
}
