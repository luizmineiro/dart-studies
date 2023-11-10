import 'pessoa.dart';

class Cozinheiro extends Pessoa {
  String receitaEspecial = "Caviar";

  @override
  void falar() {
    print("Olá, sou um cozinheiro");
  }
}
