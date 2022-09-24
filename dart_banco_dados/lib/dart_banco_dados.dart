import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  var MySqlConnection = await database.openConnection();

  print(MySqlConnection.toString());
}
