class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  //construtor tem o mesmo nome da classe
  //os parametros nao pode ter nome igual as variaveis da classe
  // Pessoa(
  //     {required String nomeConstruct,
  //     required int idadeConstruct,
  //     required String sexoConstruct}) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

  //posso criar meu constructor de forma mais direta:
  Pessoa({required this.nome, required this.idade, required this.sexo});

  //Em dart nao existe sobre carga ainda bem kk. Para criar um construtor 2, vc deve nomear com um nome diferente do construtor que já existe e assim eu posso receber ou nao alguns parametros a bel prazer neste construtor

  Pessoa.semsexo({required this.nome, required this.idade});

  //construtor vazio
  Pessoa.vazio();

  //construtor factory
  factory Pessoa.factory(String nomeConstr) {
    //recebi um parametro, modifiquei ele, peguei um construtor existente e e falei que este parametro será usando em conjunto com este construtor e é isso
    //isso é bom caso tu tenha alguma regra de negócio para tratar antes de passar os parametros para o construtor
    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.vazio();
    pessoa.nome = nome;

    return pessoa;
  }
}
