// ignore: file_names
import 'package:dart_poo/12_callable_class/enviar_email.dart';

void main() {
  //posso fazer da forma tradicional
  var enviarEmail = EnviarEmail();
  enviarEmail.enviar('fafa@gmail.com');

  // com o callable, posso usar o atalho enviarEmail('fafa@gmail.com')
  print(enviarEmail('fafa@gmail.com'));
}
