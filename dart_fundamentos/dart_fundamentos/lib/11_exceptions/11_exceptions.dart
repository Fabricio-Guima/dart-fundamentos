// ignore: file_names
void main() {
  String idade = '30';
  String? name;

//tratar tipos de exceção no dart
//FormatException é uma exceção genérica e a mais genérica fica no final
  try {
    var idadeParse = int.parse(idade);
    // name!.toLowerCase();
    if (idadeParse == 30) {
      throw Exception();
      // se o error entrar, ele caí no catch padrao
    }
  } on TypeError catch (e) {
    print('erro ao converter idade');
  } on FormatException catch (e) {
    print('erro de parseamento');
  } catch (erro) {
    print('erro ao excetutar programa');
  } finally {
    print('finalmente');
  }

  //posso fazer o try e vários on e o TypError pode ficar no lugar do catch
}
