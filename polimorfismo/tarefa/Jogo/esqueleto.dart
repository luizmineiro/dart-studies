import 'monstro.dart';

class Esqueleto extends Monstro {
  Esqueleto({required super.nome, required super.pontosDeVida});

  @override
  void atacar() {
    print("$nome do tipo Esqueleto está atacando!");
  }

  void ataqueDeOssos() {
    print("$nome do tipo Esqueleto faz um ataque de ossos!");
  }
}
