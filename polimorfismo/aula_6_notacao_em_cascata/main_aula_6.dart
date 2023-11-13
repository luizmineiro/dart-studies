import 'pessoa.dart';

void main() {
  final pessoa1 = Pessoa(nome: "João", idade: 21);

  pessoa1.falarOla();
  pessoa1.falarNome();
  pessoa1.falarIdade();

  print("================================================================");

  //* Anotação em cascata
  Pessoa(nome: "Luiz", idade: 21)
    ..falarOla()
    ..falarNome()
    ..falarIdade();
}
