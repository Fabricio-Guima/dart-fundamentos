// ignore: file_names
import 'package:dart_poo/2_construtores/pessoa.dart';

void main() {
  //construtor tem parametros nomeados e requeridos, logo tenho declarar esses parametros aqui para tudo funcionar
  var pessoa = Pessoa(nome: 'Fafa', idade: 30, sexo: 'M');

  print(pessoa.nome);

  //construtor 2 ou construtor nomeado e este só recebe 2 parametros em vez de 3
  var pessoaNomeado = Pessoa.semsexo(nome: 'bboy Fafa', idade: 30);

  print(pessoaNomeado.nome);
}
