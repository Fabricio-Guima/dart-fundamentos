import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main() {
  var c1 = Cliente(nome: 'fafa', telefone: '9999-9999');
  var c2 = Cliente(nome: 'Luana', telefone: '9999-9999');
  var c3 = Cliente(nome: 'Ana', telefone: '9999-9999');
  var c4 = Cliente(nome: 'Beto', telefone: '9999-9999');

  var lista = [c1, c2, c3, c4];
  print(lista);

  //ordernar objetos por pelo seu nome
  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));

  //ordenando com o compareTo implementado na classe e agora posso usar o sort sem dar erro
  lista.sort();
  print(lista);
}
