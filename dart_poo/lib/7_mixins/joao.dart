import 'package:dart_poo/7_mixins/artista.dart';
import 'package:dart_poo/7_mixins/cantar.dart';
import 'package:dart_poo/7_mixins/dancar.dart';

// mixins = faz tua classe filha herdar de outras classes, em regra, tu só pode ter uma classe pai (extends), com o mixin, é possível herdar de múltiplos pais, digamos
//mixin se escreve no meio, após a classe pai (extends) e antes de implementar interfaces
//posso ter vários mixins separados por vírgula
class Joao extends Artista with Dancar, Cantar {}
