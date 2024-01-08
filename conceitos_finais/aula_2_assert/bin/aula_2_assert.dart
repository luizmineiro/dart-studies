void main() {
  //* Assert foi criado apenas para fazer testes em apenas modo de desenvolvimento ou debug
  Pessoa("João", 12).falarNomeEIdade();
  Pessoa("Bia", -4).falarNomeEIdade();
}

class Pessoa {
  final String nome;
  final int idade;

  Pessoa(this.nome, this.idade)
      : assert(idade >= 0, "A idade tem que ser maior ou igual que zero");

  void falarNomeEIdade() {
    print("Meu nome é $nome e tenho $idade anos");
  }
}
