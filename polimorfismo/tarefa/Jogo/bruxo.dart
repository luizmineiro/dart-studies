import 'monstro.dart';

class Bruxo extends Monstro {
  int numeroDePocoes;
  Bruxo({
    required super.nome,
    required super.pontosDeVida,
    this.numeroDePocoes = 1,
  });

  @override
  void atacar() {
    print("$nome do tipo Bruxo está atacando!");
  }

  int usarPocao() {
    numeroDePocoes--;
    print("Gulp");
    return numeroDePocoes;
  }
}
