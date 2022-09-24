// ignore: file_names
void main() {
  final nomes = ['Rodrigo', 'fafa', 'Renato'];

  // final pessoas_antigo = nomes.map((nome) => Pessoa(nome)).toList();

  // for (var pessoa in pessoas_antigo) {
  //   print('Olá ${pessoa.nome}');
  // }

  //com o contructor tear off
  //nem usa o construtor default da classe Pessoa
  // Pessoa.nome é um outro construtor que posso usar no lugar de Pessoa.new
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);
}
