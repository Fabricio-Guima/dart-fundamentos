class Pessoa {
  String? nome;
  //quando um atributo de associação é obrigatório, estamos falando de composição e endereco neste caso é obrigatório
  Endereco endereco = Endereco();
  //se o atributo é opicional, entao é agregação
  Telefone? telefone;
}

class Endereco {}

class Telefone {}
