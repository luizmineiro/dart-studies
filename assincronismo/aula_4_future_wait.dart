void main() async {
  //! Ele espera uma lista de futures
  final resultado =
      await Future.wait<int>([primeiraFuncaoAssinc(), segundaFuncaoAssinc()]);

  print(resultado);
}

Future<int> primeiraFuncaoAssinc() async {
  await Future.delayed(Duration(seconds: 3));
  print("Retornando numero 3");
  return 3;
}

Future<int> segundaFuncaoAssinc() async {
  await Future.delayed(Duration(seconds: 1));
  print("Retornando numero 5");
  return 5;
}
