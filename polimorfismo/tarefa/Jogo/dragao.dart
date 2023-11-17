import 'monstro.dart';
import 'voar.dart';

class Dragao extends Monstro with Voar {
  Dragao({required super.nome, required super.pontosDeVida});

  @override
  void atacar() {
    print("$nome do tipo Dragão está atacando!");
  }

  void cuspirFogo() {
    print("$nome do tipo Dragao faz um ataque de cuspir fogo!");
  }
}
