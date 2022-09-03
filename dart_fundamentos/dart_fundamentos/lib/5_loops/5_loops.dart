// ignore: file_names
void main() {
  var numero = List<int>.generate(10, (index) => index);
  var nomes = ['Fabrício', 'Fafa', 'Guimarães'];

  for (var i = 0; i < numero.length; i++) {
    print(numero[i]);
  }

  for (var nome in nomes) {
    print(nome);
  }
}
