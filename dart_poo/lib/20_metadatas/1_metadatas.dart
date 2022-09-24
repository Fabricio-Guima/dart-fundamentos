// ignore: file_names
import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/pessoa.dart';

import 'fazer.dart';

void main() {
  //metadatas são as anotação, sao aquelas coisas quem tem @

  final p1 = Pessoa();
  var instanceMirror = reflect(p1);

  var classMirror = instanceMirror.type;
  //sim, posso passar print para dentro do foreach para printar tudo dentro de metadatas kkkk
  // classMirror.metadata.forEach(print);
  //metadatas dá a vc todas as anotações que tu fez na tua classe
  // nao sei para que isso servirá um dia

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print(instanceAnnotation.quem);
      print(instanceAnnotation.oque);
    }
  });
}
