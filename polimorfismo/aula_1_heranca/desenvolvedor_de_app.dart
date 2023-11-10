import 'pessoa.dart';

/*
polimorfismo => Do grago "Varias formas"
Possibilidade de invocar metodos que emboram possuam a mesma assinatura elas se comportam de maneitas diferentes
*/
class DesenvolvedorDeApp extends Pessoa {
  String linguagemDeProgramacao = "Dart";

  @override
  void falar() {
    print("Ola sou um desenvolvedor de aplicativos!!!");
  }
}
