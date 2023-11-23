void main() {
  //* Dart é uma linguagem assincrona
  print(1);
  print(2);
  //! Future é a classe que representa um processo assincrono

  Future.delayed(
    Duration(seconds: 5),
    () {
      print(3);
    },
  );
  print(4);
}
