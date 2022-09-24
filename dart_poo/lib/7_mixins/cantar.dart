import 'package:dart_poo/7_mixins/artista.dart';

mixin Cantar on Artista {
  String cantar() {
    return 'Estou cantando mixin';
  }
}
