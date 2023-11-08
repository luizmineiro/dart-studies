class Pessoa {
  String _nome = "João";
  String _sobrenome = "Alves";

  Pessoa(String nome, String sobrenome) {
    _nome = nome;
    _sobrenome = sobrenome;
  }

  void dizerMeuNomeESobrenome() {
    print("Meu nome é $_nome e meu sobrenome $_sobrenome");
  }
}
