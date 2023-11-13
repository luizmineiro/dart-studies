import 'animal.dart';
import 'gato.dart';

void main() {
  final animal1 = Animal("Spike");

  print(animal1.nome);

  final gato1 = Gato("Tom");
  print(gato1.nome);
}
