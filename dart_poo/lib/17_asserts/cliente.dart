// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;

//assert é um tipo de validacao e aqui uma pessao que digitou cpf, nao pode digitar cnpj e ser pessoa fisica e juridica ao mesmo tempo
  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  }) : assert(
            (cpf != null)
                ? nome != null && razaoSocial == null && cnpj == null
                : true,
            'Você enviou cpf junto com cnpj');
}
