//interface no dart é uma classe abstrata

//isto é uma classe abstrata, pois tem métodos implementados {}
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

//isto é uma interface, pois nao tem método implementado de fato, ele existe, mas nao tem chaves {}

//interface nao pode ter atributos nulos por causa do null safety, usamos o abstract, estou obrigando a classe filha ter portas, rodas e motor com a palabra abstract
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
