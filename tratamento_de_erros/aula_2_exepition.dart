void main() {
  String numeroEmString = '2000';

  int? numeroEmInt;

  // try => tentar executar tudo que esta dentro do escopo
  try {
    numeroEmInt = int.parse(numeroEmString);
  } on FormatException catch (error) {
    print("Format Exeption: $error");
  } catch (e) {
    print("Erro generico $e");
  }

  print("Numero em INT: $numeroEmInt");
}

//Unhandled exception => excessão não tratada
