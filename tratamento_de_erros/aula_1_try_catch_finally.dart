void main() {
  String numeroEmString = '2000';

  int? numeroEmInt;

  // try => tentar executar tudo que esta dentro do escopo
  try {
    numeroEmInt = int.parse(numeroEmString);
  } catch (error, stacktrace) {
    // pegar =>pega o erro caso aconteça
    print(error);
    //! Mostra exatamente onde esta o error
    print(stacktrace);
  } finally {
    print("TRY E CATCH JUNTOS");
  }

  print("Numero em INT: $numeroEmInt");
}

//Unhandled exception => excessão não tratada
