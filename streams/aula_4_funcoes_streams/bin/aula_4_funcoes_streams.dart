void main() async {
  final valorNumeroFuture = await retornaNumeroInteiroPorFuture();
  print(valorNumeroFuture);

  retornaNumerosInteirosPorStream().listen((event) {
    print(event);
  });
}

Future<int> retornaNumeroInteiroPorFuture() async {
  await Future.delayed(Duration(seconds: 1));

  return 1;
}

Stream<int> retornaNumerosInteirosPorStream() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i + 1;
  }
}
