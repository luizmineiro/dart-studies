void main() {
  List<int> listaDeInteiros = [2, 10, 20, 8, 4, 80, 75, 59, 6, 54];
  try {
    for (var numerosInteiros in listaDeInteiros) {
      if (numerosInteiros <= 10) {
        // trhow => lançar
        throw NumerosMenorOuIgaulA10Exepition(
          'Numeros menores ou igual a 10 não são permitidos nessa aplicação',
        );
      }
    }
  } on NumerosMenorOuIgaulA10Exepition catch (error) {
    print(error.message);
  }
}

class NumerosMenorOuIgaulA10Exepition implements Exception {
  final message;

  NumerosMenorOuIgaulA10Exepition(this.message);
}
