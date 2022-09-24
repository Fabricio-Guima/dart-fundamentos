//public private 2 modificadores de acesso no dart
class Camiseta {
  String? tamanho;
  String? _cor;
  String? marca;

  //String? _cor agora deixei esse atributo privado no dart e foda-se
//métodos estáticos só pode interagir com coisas estáticas, por exemplo, a string nome que é estática

//podemos ter clases privadas e coisas estaticas privadas tmbm, só usar o _
  static const String nome = 'Camiseta';

  static String getName() => nome;

  String tipoDeLavagem(marca) {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }

  //get e setter para pegar a cor e salvar a cor
  String? get cor => _cor;

  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser Verder');
    }
  }
}
