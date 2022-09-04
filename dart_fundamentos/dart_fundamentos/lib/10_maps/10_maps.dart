// ignore_for_file: file_names

void main() {
  //maps é a estrutura mais importante do dart é com ela que usamos o json
  final paciente = <String, String>{'name': 'Fabrício', 'course': 'Flutter'};
  //mapa é chave valor tipo o objeto do js

//aceito o resultado do map como um nulo
  Map<String, String>? pacienteNullSafety2 = null;
  //aceito chaves nulas
  Map<String?, String> pacienteNullSafety = {null: 'Fafa'};
  //aceito valores nulos
  Map<String, String?> pacienteNullSafety3 = {'name': null};

  //cria chave e valor caso essa chave nao exista dentro do mapa
  var produtos = <String, String>{};
  produtos.putIfAbsent('name', () => 'Ana');
  produtos.putIfAbsent('lastname', () => 'Carolina');
  print(produtos);
  //alterar/atualiza o valor da chave
  produtos.update('name', (value) => 'Beto');
  //atualizar o valor de uma chave, caso ela nao exista no mapa, crie esta chave e valor
  produtos.update('lastname', (value) => 'Beto', ifAbsent: () => 'dos Santos');
  print(produtos);
  //como acessar um valor de um mapa
  print(produtos['name']);
  //foreach nao pode ser feito se tu quer fazer requisição assíncrona
  produtos.forEach((key, value) {
    print('Chave: $key Valor: $value ');
  });
  //for para imprimir as chaves e valores respectivos e aqui vc pode fazer alum processo assíncrono dentro
  for (var entry in produtos.entries) {
    print('Chaves: ${entry.key}: ${entry.value}');
  }
  //pegar as chaves de um map
  for (var key in produtos.keys) {
    print('Chaves: $key');
  }
  //map do map tenho que retornar sem um MapEntry para ter um novo array mapeado
  var novoprodutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoprodutos);

  //mapa que pode receber qualquer valor, posso criar um map dentro do map kk
  var mapa = <String, Object>{
    'name': 'Fabrício',
    'courses': [
      {'name': 'flutter 3', 'description': 'Melhor curso de flutter 3'}
    ]
  };

  print(mapa['courses']);
}
