import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  var mySqlConnection = await database.openConnection();

  var resultado = await mySqlConnection
      .query('insert into aluno(id, nome) values (?,?)', [null, 'Fabrício 3']);
  print(resultado.affectedRows);

  var select = await mySqlConnection.query('select * from aluno');
//sempre retorna uma lista de alunos
  select.forEach((row) {
    print(row['id']);
    print(row['nome']);
  });
}
