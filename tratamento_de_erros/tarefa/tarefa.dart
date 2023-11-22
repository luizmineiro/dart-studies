void main() {
  final List<String> nomes = ['Luiz', 'Marcos'];

  try {
    if (nomes.length > 3) {
      throw TamanhoDaListaException('O tamanho da lista é maior que 3');
    }

    for (var nome in nomes) {
      if (nome == "João") {
        throw NomeException('O nome $nome não é válido nesse aplicativo');
      }
    }
  } on NomeException catch (error) {
    print(error.erro);
  } catch (error) {
    if (error is TamanhoDaListaException) {
      print(error.erro);
    }
  }

  print("Fim da aplicação");
}

class NomeException extends ErrorExcepition {
  NomeException(super.erro);
}

class TamanhoDaListaException extends ErrorExcepition {
  TamanhoDaListaException(super.erro);
}

class ErrorExcepition implements Exception {
  final String erro;

  ErrorExcepition(this.erro);
}
