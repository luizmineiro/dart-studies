import 'bruxo.dart';
import 'dragao.dart';
import 'esqueleto.dart';

void main() {
  final esqueleto1 = Esqueleto(nome: "Luiz", pontosDeVida: 5);

  esqueleto1.atacar();
  esqueleto1.ataqueDeOssos();

  print("===================================");

  final bruxo1 = Bruxo(nome: "Alick", pontosDeVida: 10, numeroDePocoes: 15);
  bruxo1.atacar();
  print(bruxo1.usarPocao());

  print("===================================");

  Dragao(nome: "Alves", pontosDeVida: 20)
    ..atacar()
    ..cuspirFogo()
    ..voar();
}
