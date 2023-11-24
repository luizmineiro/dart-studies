void main() async {
  // pegarIdade(32).then((String idade) {
  //   falarNomeEIdade("João", idade)
  //       .then((_) {})
  //       .catchError((falarNomeEIdadeError) {
  //     print(falarNomeEIdadeError);
  //   });
  // }).catchError((pegarIdadeError) {
  //   print(pegarIdadeError);
  // }).whenComplete(() => print("Fim"));

  try {
    final String idade = await pegarIdade(32);
    print(idade);
    await falarNomeEIdade("João", idade);
    print("Função sem erros");
  } catch (e) {
    print(e);
  } finally {
    print("fim");
  }
}

Future<String> pegarIdade(int idade) {
  return Future.delayed(
    Duration(seconds: 1),
    () {
      if (idade < 18) {
        throw Exception("Você é menor de idade não pode usar esse app");
      }
      print("Sua idade é $idade anos");
      return "$idade anos";
    },
  );
}

Future<void> falarNomeEIdade(String nome, String idade) {
  return Future.delayed(
    Duration(seconds: 1),
    () {
      if (nome.isEmpty) {
        throw Exception("Nome invalido");
      }
      print("Meu nome é $nome e tenho $idade anos");
    },
  );
}
