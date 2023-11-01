void main() {
  List<int> listaDenumeros = [1, 6, 23, 43, 99];
  print(listaDenumeros.length);
  print(listaDenumeros[0]);
  print(listaDenumeros.last);

  List<String> linguagensDeProgramacao = [];
  linguagensDeProgramacao.add("Java");
  linguagensDeProgramacao.add("Ruby");
  linguagensDeProgramacao.add("Dart");
  print(linguagensDeProgramacao);

  List<dynamic> listaDinamica = [];
  listaDinamica.add(2);
  listaDinamica.add("João");
  listaDinamica.add(65.9);
  listaDinamica.add(false);
  print(listaDinamica);
}
