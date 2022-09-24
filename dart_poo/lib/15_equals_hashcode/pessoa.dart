// ignore_for_file: public_member_api_docs, sort_constructors_first

class Pessoa {
  String nome;
  String email;
  String telefone;
  Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
  });

//dica ctrl + . e escolher a opção equality gera o hascode automaticamente

  //macete para saber se as propriedades de um objeto são todas iguais as de um outro objeto do mesmo tipo (Pessoa)

  // criei um == para comparar se os objetos tem conteúdos iguais

//modo 1
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   var isEquals = false;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         isEquals = true;
  //       }
  //     }
  //   }
  //   return isEquals;
  // }

//modo 2
  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is Pessoa && other.nome == nome && other.email == email;
  // }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.email == email &&
        other.telefone == telefone;
  }

  //autorizando um objeto a mostrar seus atributos quando este for printado

//toString na mao
  // @override
  // String toString() {
  //   return '''
  //   Pessoa:
  //     nome: $nome,
  //     email: $email,
  //     telefone: $telefone
  // ''';
  // }

  @override
  String toString() =>
      'Pessoa(nome: $nome, email: $email, telefone: $telefone)';
}
