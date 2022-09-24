// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cliente implements Comparable<Cliente> {
  String nome;
  String telefone;

  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone)';

  //ordernar por padrão tem que usar o comparable e depois usar o ctrl + . para criar um compareTo

  @override
  int compareTo(Cliente other) {
    // no meu caso, estou ordenando os Clientes pelo nome
    return nome.compareTo(other.nome);
  }
}
