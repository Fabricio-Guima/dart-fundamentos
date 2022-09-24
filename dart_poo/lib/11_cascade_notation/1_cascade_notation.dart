// ignore: file_names
void main() {
  //essa coisa feia se chama cascade notation depois de Pessoa() tem um espaço e em seguida vem os ..
  // após esses .. tu pode acessar métodos tmbm
  var pessoa = Pessoa()
    ..nome = 'fafa'
    ..email = "fafa@gmail.com"
    ..site = "Fafa.com";

  // pessoa.nome = "Fafa";
  // pessoa.email = "fafa@gmail.com";
  // pessoa.site = "Fafa.com";

  print('''
  Pessoa:
  Nome: ${pessoa.nome}
  Email: ${pessoa.email}
  Site: ${pessoa.site}
''');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;
}
