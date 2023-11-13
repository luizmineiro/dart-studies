import 'pessoa.dart';

class Mutante implements Pessoa {
  @override
  int numeroDeCerebros = 2;

  @override
  void falar() {
    print("Ola sou um mutante");
  }
}
