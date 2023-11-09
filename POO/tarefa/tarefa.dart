import 'carro.dart';

void main() {
  final carro1 = Carro("Chevrolet", 4, automatico: false);
  final carro2 = Carro("Hyundai", 3, automatico: true);

  print(carro1.getAutomatico);
  Carro.fazerRoncoDoMotor();
  carro1.imprimirNumeroDePortas();

  print("===================================");

  print(carro2.getAutomatico);
  Carro.fazerRoncoDoMotor();
  carro2.imprimirNumeroDePortas();
  print(carro2.getCor);
  carro2.setCor = "verde";
  print(carro2.getCor);
}
