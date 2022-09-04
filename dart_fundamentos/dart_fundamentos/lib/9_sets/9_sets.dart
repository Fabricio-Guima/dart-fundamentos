// ignore: file_names
void main() {
//sets sao bem semelhantes a listas
// muitos metodos das listas funcionam tranquilamente nos sets
  var numeroLista = <int?>[];
  numeroLista.add(1);
  numeroLista.add(1);
  numeroLista.add(2);
  numeroLista.add(3);
  numeroLista.add(4);
  print(numeroLista);

//sets nao permitem valores duplicados!
  var numeroSet = <int?>{};
  numeroSet.add(1);
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(3);
  numeroSet.add(4);
  print(numeroSet);

  //transformar lista para set
  print(numeroLista.toSet());

  numeroSet.forEach(print);

  //diferenças entre dois sets
  var numero1 = {1, 2, 3, 4, 5, 6, 7};
  var numero2 = {1, 2, 3, 4, 5, 8};

//quais dos numeros que tem no numero1 e nao tem no numero2?
  print(numero1.difference(numero2));

  //juntar dois sets
  print(numero1.union(numero2));

  //pegar a interseção entre dois sets (aquilo que se repete)
  print(numero1.intersection(numero2));

  //buscar um elemento identico ao que vc passou como critério de busca
  //se achou, retorna 1, caso contrário, null
  print(numero1.lookup(10));
}
