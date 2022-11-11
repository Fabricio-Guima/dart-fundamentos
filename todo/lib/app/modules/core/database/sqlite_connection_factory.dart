import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart'

class SqliteConnectFactory {
  static const _VERSION = 1;
  static const _DATABASE_NAME = 'TODO_LIST_PROVIDER';

  static SqliteConnectFactory? _instance;

  Database? db;
  //trabalhar com multithread
  final _lock = Lock();

  SqliteConnectFactory._();

  factory SqliteConnectFactory() {
    if (_instance == null) {
      _instance = SqliteConnectFactory._();
    }

    return _instance!;
  }

  Future<Database> openConnection() async {

  }
}
