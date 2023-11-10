import 'mutante.dart';
import 'pessoa.dart';

void main() {
  final pessoa1 = Pessoa();
  print(pessoa1.numeroDeCerebros);
  pessoa1.falar();

  print("================================================");

  final mutante1 = Mutante();
  print(mutante1.numeroDeCerebros);
  mutante1.falar();
}
