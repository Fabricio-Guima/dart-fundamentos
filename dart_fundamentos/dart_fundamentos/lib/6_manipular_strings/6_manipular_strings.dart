// ignore: file_names
void main() {
  final nome = 'Fabrício Guimarães';

//do índice 7 até o final, pegue as strings
  var subStringNome = nome.substring(7);
  print(subStringNome);

//do índice 0 até o índice 8 (menos o índice 8, no caso até o 7)
  var subStringNome2 = nome.substring(0, 8);
  print(subStringNome2);

  var sexo = 'Masculino';
  print(sexo.startsWith('Mas')); //dá true
  print(sexo.contains('scu'));

  var myName = 'Fabrício';
  var lastName = 'Guimarães';

  print('meu nome é $myName $lastName');

  //split
  var paciente = 'Fabrício|30|Especialista flutter';
  var dadosPacienteSplited = paciente.split('|');
  print(dadosPacienteSplited);
}
