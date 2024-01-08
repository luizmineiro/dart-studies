import 'dart:async';

void main() {
  final streamCtrl = StreamController<int>();

  streamCtrl.stream.where((event) => event < 3).listen(print);

  streamCtrl.sink.add(1);
  streamCtrl.sink.add(2);
  streamCtrl.sink.add(3);

  streamCtrl.close();

  final streamBroadcast = funcaoQueRetornaStream().asBroadcastStream();

  streamBroadcast.listen((event) {
    print(event);
  }, onError: (error) {
    print(error);
  });

  streamBroadcast.listen((event) {
    print(event);
  }, onError: (error) {
    print(error);
  });
}

Stream<String> funcaoQueRetornaStream() async* {
  final List<String> nomes = ["João", "Davi", "Bia", "Dalila", "Marcelo"];

  for (var nome in nomes) {
    if (nome == "João") {
      throw Exception("Seu próprio nome não é permitido");
    }

    yield nome;
  }
}
