void main() {
  final List<String> listaDeNomes = ["João", "Fernanda", "Pricila", "Alick"];

  // listaDeNomes.forEach((String nomes) => print(nomes));
  // listaDeNomes.forEach((String nomes) async => await falarNome(nomes));
  Future.forEach(listaDeNomes, (String nomes) => falarNome(nomes));
}

Future<void> falarNome(String nome) async {
  await Future.delayed(Duration(seconds: 2));
  print(nome);
}
