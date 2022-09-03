// ignore_for_file: file_names

//antes podia declarar variável null, com o nullsafety não pode mais
void main() {
  String? nome;

  print(nome!.length); //sei que é nulo, mas to obrigando a fazer nome.length
}
