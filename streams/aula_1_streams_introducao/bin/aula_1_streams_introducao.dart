import 'dart:async';

void main() async {
  /*
    Existem dois meios de assincronismo no dart.
    1 -> Future: onde vc recebe um valor no futuro

    2 -> Stream: Um fluxo de eventos que acontece no futuro onde vc recebe 0 ou mais valores com o tempo 
        Ex.: Ler um arquivo (File) usando Dart retorna uma stream. Dados dão lidos no seu pc e são enviados para seu event loop
             O Dart olha para o dado no event loop e percebe que tem alguem (client) esperando por ele, então adiciona o dado no codigo  
  */

  final streamController = StreamController<int>();

  //* Estaremos ouvindo eventos da stream
  streamController.stream.listen(
    (event) {
      print(event);
    },
    //* onError: para quando algum erro ocorre
    onError: (error) {
      print(error);
    },
    //* onDone: para quando a stream deixa de ser ouvida
    onDone: () {
      print("DONE");
    },
    //* cancelar a stream se houver algum erro
    cancelOnError: false,
  );

  await addNumberToStream(streamController, 1);
  await addNumberToStream(streamController, 2);
  await addNumberToStream(streamController, 3);
}

Future<void> addNumberToStream(StreamController streamCtrl, int number) async {
  await Future.delayed(Duration(seconds: 1));
  streamCtrl.sink.add(number);

  if (number == 2) {
    streamCtrl.sink.addError(Exception("Numero 2 é invalido"));
  }
  if (number == 3) {
    streamCtrl.close();
  }
}
