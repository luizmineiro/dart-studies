import 'aula_5_mixin.dart';

void main() {
  final gato1 = Gato();
  gato1.cicloDoAnimal();
  gato1.miar();

  print("================================================================");

  final cachorro1 = Cachorro();
  cachorro1.cicloDoAnimal();
  cachorro1.latir();

  print("================================================================");

  final passaro1 = Passaro();
  passaro1.cicloDoAnimal();
  passaro1.piar();
  passaro1.voar();
}
