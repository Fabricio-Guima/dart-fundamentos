import 'package:dart_poo/17_asserts/cliente.dart';

void main() {
  // criei um cliente, mas criei Cliente de uma forma errada, nao quero que meus clientes sejam ao mesmo tempo pessoa fisica e juridica, para isso eu uso o assert
  var cli = Cliente(
      nome: 'fafa',
      cpf: '12312312313',
      razaoSocial: 'fafa empresa',
      cnpj: '78912378912314');
}
