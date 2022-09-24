// ignore: file_names
void main() {
  var pessoa = Pessoa();
  //jeito 2
  pessoa.nome = 'fafa aqui';
  print(pessoa.nome);

//jeito 1
  // pessoa.setNome('fafa');
  // print(pessoa.getNome());
}

class Pessoa {
  String? _nome;

//jeito 1
  // String? getNome() => _nome;
  // void setNome(String nome) => _nome = nome;

//jeito 2
  String? get nome => _nome;
  set nome(String? nome) => _nome = nome;
}
