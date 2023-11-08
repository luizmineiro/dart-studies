import './pessoa.dart';

void main() {
  final pessoa1 = Pessoa('João', 'Luiz');
  pessoa1.dizerMeuNomeESobrenome();

  print("=======================");

  final pessoa2 = Pessoa('Jessica', 'Alves');
  pessoa2.dizerMeuNomeESobrenome();

  print("=======================");
}
