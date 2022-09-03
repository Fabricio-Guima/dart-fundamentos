// ignore: file_names
void main() {
  final valor = -20;
  if (valor.isNegative) {
    print(valor);
  }

  var valorDouble = 10.65;
  //arredonda para o inteiro mais próximo
  print(valorDouble.round());
  //arredonda para o inteiro mais próximo e o retorna como double
  print(valorDouble.roundToDouble());

  final valorString = '10';
  final valorInt = int.parse(valorString);
  //tente passar para int, caso nao consiga, o valor será null
  final valorInt2 = int.tryParse(valorString);
  print(valorInt);
  print(valorInt2);
  //limitar quantidade de decimais
  var precoCamiseta = 30.23456;
  print(precoCamiseta.toStringAsFixed(2));
}
