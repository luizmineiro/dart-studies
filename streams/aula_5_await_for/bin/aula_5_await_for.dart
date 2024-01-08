void main() async {
  print(await pegarNomesDaStream(nomeStream()));
}

Stream<String> nomeStream() async* {
  List<String> nomes = ["João", "Davi", "Bia", "Alick", "Joana"];

  for (var nome in nomes) {
    yield nome;
  }
}

Future<List<String>> pegarNomesDaStream(Stream<String> stream) async {
  final List<String> nomes = [];

  await for (final nome in stream) {
    nomes.add(nome);
  }

  return nomes;
}
