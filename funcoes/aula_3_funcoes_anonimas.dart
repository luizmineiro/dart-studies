void main() {
  final nomes = ['João', 'Luiz', 'Bia', 'Fernanda'];

  //* função anonima
  nomes.forEach(
    (String nome) => print(nome),
  );
  //* função não anonima
  nomes.forEach(nomeFuncao);
}

void nomeFuncao(String nome) {
  print(nome);
}
