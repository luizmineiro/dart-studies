void main() {
  dizerMeuNomeEMinhaIdade("João Luiz", 21);
  dizerMeuNomeEApelidoCasoPossua("João Luiz", "Luiz");
  dizerQuantosCerebrosEuTenho(numeroDeCerebros: 10);
}

void dizerMeuNomeEMinhaIdade(String nome, int idade) {
  print("Meu nome e $nome. Tenho $idade anos");
}

void dizerMeuNomeEApelidoCasoPossua(String nome, [String? apelido]) {
  apelido == null
      ? print("Meu nome e $nome e nao possuo apelido")
      : print("Meu nome e $nome e meu apelido e $apelido");
}

void dizerQuantosCerebrosEuTenho({int numeroDeCerebros = 1}) {
  numeroDeCerebros == 1
      ? print("Sou normal, tenho 1 cerebro")
      : print("Sou mutante, tenho $numeroDeCerebros cerebro");
}
