void main() async {
  retornaNumeroAssincrono(50).then((numero) => null).catchError((erro) {
    print("Valores maior que 20 não podem ser usados");
  }).whenComplete(() => print('Fim da função '));

  final numero = await retornaNumeroAssincrono(15);

  print("Número retornado: $numero");

  final List<Future<int>> listaDeFutures = [
    retornaNumeroAssincrono(2),
    retornaNumeroAssincrono(5),
    retornaNumeroAssincrono(3),
  ];

  final listResultado = await Future.wait(listaDeFutures);

  int resultado = 0;

  for (var numero in listResultado) {
    resultado += numero;
  }

  print("Resultado: $resultado");
}

Future<int> retornaNumeroAssincrono(int numero) async {
  await Future.delayed(Duration(seconds: 3));

  if (numero > 20) {
    throw NumeroMaiorQueVinteException();
  }

  return numero;
}

class NumeroMaiorQueVinteException implements Exception {}
