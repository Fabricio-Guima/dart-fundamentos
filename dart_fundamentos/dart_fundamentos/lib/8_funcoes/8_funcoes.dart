// ignore: file_names

void main() {
  print(somarInteiros(2, 2));

  print(somaDoubles(num1: 1.5, num2: 1.5));

  print(somaDoublesObrigatorios(num1: 50, num2: 50));

  print(somaDoublesObrigatoriosAceitaNulo(num1: 200, num2: 200));

  print(somaDoublesObrigatoriosAceitaNulo2(num1: 200, num2: 200));

  print(somaDoublesObrigatoriosDefault());

  print(somaOpicionalParametros(5));
}

//parametros obrigatórios por default
//retorno opicional com ?
int somarInteiros(int num1, int num2) {
  return num1 + num2;
}

//parâmetros nomeados tu usa {} e eles aceitam nulos por padrao, logo eu tenho que usar o ? para deixá-los nulos
double? somaDoubles({double? num1, double? num2}) {
  //por isso poder ser nulo, farei a checagem
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return null;
}

//parâmetros nomeados obrigatórios sempre usa o {}
double somaDoublesObrigatorios({required double num1, required double num2}) {
  //por isso poder ser nulo, farei a checagem

  return num1 + num2;
}

//parâmetros nomeados obrigatórios, MAS QUE ACEITA NULOS sempre usa o {}
double? somaDoublesObrigatoriosAceitaNulo(
    {required double? num1, required double? num2}) {
  //por isso poder ser nulo, farei a checagem
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }

  return null;
}

//parâmetros nomeados obrigatórios sempre usam o {} e o parametro 1 é opicional e nunca será nulo
double? somaDoublesObrigatoriosAceitaNulo2(
    {required double? num1, required double num2}) {
  num1 ??= 0;
  return num1 + num2;
}

//parâmetros nomeados obrigatórios que tem um valor default,  {}
double? somaDoublesObrigatoriosDefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

//parametros opicionais nao nomeados uso o [] e com valor default
int somaOpicionalParametros([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}
