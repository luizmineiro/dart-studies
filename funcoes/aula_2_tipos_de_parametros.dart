void main() {
  //* parametro do tipo posicional
  dizerMeuNome("João Luiz");
  //* parametro do tipo opcional
  dizerMeuNomeOpcional();
  //*parametro do tipo nomeado
  dizerMeuNomeNomeado(nome: "João Luiz");
}

void dizerMeuNome(String nome) {
  print("Meu nome é $nome");
}

void dizerMeuNomeOpcional([String? nome]) {
  print("Meu nome é $nome");
}

void dizerMeuNomeNomeado({required String nome}) {
  print("Meu nome é $nome");
}
