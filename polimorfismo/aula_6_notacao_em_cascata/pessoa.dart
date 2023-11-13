class Pessoa {
  final String nome;
  final int idade;

  Pessoa({required this.nome, required this.idade});

  void falarOla() => print("Olá");
  void falarNome() => print("Meu nome é $nome");
  void falarIdade() => print("Eu tenho $idade anos");
}
