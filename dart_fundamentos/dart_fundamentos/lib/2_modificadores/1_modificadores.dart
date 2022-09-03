// ignore: file_names
void main() {
  //nao quero alterar a variavel nome
  String name = "fabrício";
  print(name);

  //final - impossível de ser alterada
  final nomeCompleto = 'Fabrício Guimarães';
  // nomeCompleto = 'dsdsdsd';
  print(nomeCompleto);

  //const - é igual o final, mas tu ja tem que declarar de cara que a const tem um valor, tu nao pode declarar a const vazia e depois declarar algo a ela na linha debaixo

  //const é bom declarar o valor logo, prq elas sao lidas em tempos de compilicação

  // o resto, é runtime, após a compilação
}
