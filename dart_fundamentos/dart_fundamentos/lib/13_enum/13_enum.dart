void main() {
  var cor = Cores.laranja;

  switch (cor) {
    case Cores.azul:
      print('cor é azul');
      break;
    case Cores.vermelho:
      print('cor é vermelho');
      break;
    case Cores.laranja:
      print('cor é laranja');
      break;
    case Cores.verde:
      print('cor é verde');
      break;
    case Cores.preto:
      print('cor é preto');
      break;
  }
}

//criar enum
enum Cores { azul, vermelho, laranja, verde, preto }
