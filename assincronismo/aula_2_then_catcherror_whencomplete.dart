void main() {
  Future.delayed(
    Duration(seconds: 2),
    () {
      print("Callback");
    },
  );
  /*
   then => Ele vai executar a função assincrona e quando completar, se não houver erros, o then será executado
   */
  Future.delayed(Duration(seconds: 3)).then((_) => print("Callback com then"));

  pegarInteiroAssincrono()
      .then((value) => print(value))
      .catchError((error) => print("Deu um erro ao pegar o inteiro!!! $error"))
      .whenComplete(() => print("Fim da função assincrona "));
}

Future<int> pegarInteiroAssincrono() {
  return Future.delayed(
    Duration(seconds: 4),
    () {
      // throw Exception();
      return 1;
    },
  );
}
