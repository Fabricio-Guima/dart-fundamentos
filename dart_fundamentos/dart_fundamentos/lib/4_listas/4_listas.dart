// ignore: file_names

void main() {
  //lista vem do objeto List
  List<int> listNumeros = [1, 2, 3];
  //criei lista vazia

  print(listNumeros);

  var listNumeros2 = [4, 5, 6];

//lista de ints
  List<int> listSemDados = [];
//lista tmbm de ints
  var listSemDados2 = <int>[];
//lista dinamica, pois nao tem tipo definido
  var listSemDados1 = [];
//lista nao pode ser nula mas o items podem ser nulos
  List<String?> nomesInternosAceitamNulos = ['Rodrigo', 'Fabrício', 'null'];
//lista pode ser nula e seus items tmbm
  List<String?>? nomesInternosAceitamNulos2 = null;

  //adionar item na lista push add
  listNumeros.add(4);
  print(listNumeros);
  //adicionar um item novo no de um item ja existente (sobrescrever) e esse item existente vira o anterior kkk
  listNumeros.insert(1, 0);
  print(listNumeros);

  //adicionar muitos elementos (adiciona no final da lista)
  listNumeros.addAll([5, 6, 7]);
  print(listNumeros);

  //remover algo que é string da lista splice remove
  nomesInternosAceitamNulos.remove('null');
  print(nomesInternosAceitamNulos);
  //remover com funcão
  nomesInternosAceitamNulos.removeWhere((element) => element == 'Rodrigo');
  print(nomesInternosAceitamNulos);

  //pegar o primeiro elemento de uma lista
  print(listNumeros.first);

  //pegar o ultimo elemento de uma lista
  print(listNumeros.last);
  //gerar uma lista de numero (de 0 a 9) ou posso somar index + 1 pra ficar de 1 a 10
  final numerosGerados = List.generate(10, (index) => index);
  print(numerosGerados);

  //gerar uma lista de n elementos iguais eu acho kkk
  final repeticoes = List.filled(10, 'repeticao');
  print(repeticoes);

  //somar toda a lista famoso reduce
  final numerosGeradosSomaTotal = List.generate(100, (index) => index + 1);
  var soma = numerosGeradosSomaTotal.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);

  print(soma);

  //spread operator
  var listaNumerosSpread2 = [4, 5, 6];
  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpread2];
  print(listaNumerosSpread);
  //collection if
  //adicione a string de suco de laranja se a condicao for true
  var promocaoAtiva = true;

  var produtos = [
    'cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'suco de laranja adicionado kkkk que loucura'
  ];

  print(produtos);

  //collection for
  var ListaInts = [1, 2, 3];
  var ListaStrings = ['#0', for (var i in ListaInts) '#$i'];
  print(ListaStrings);
}
