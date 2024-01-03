import 'dart:async';

void main() {
  final streamCtlr = StreamController();

  final Stream stream = streamCtlr.stream.where((event) => event != "Alick");

  stream.listen((event) { 
    print(event);
  });

  streamCtlr.sink.add("João");
  streamCtlr.sink.add("Maria");
  streamCtlr.sink.add("Alick");
  streamCtlr.sink.add("Alick");
  streamCtlr.sink.add("Alick");
  streamCtlr.sink.add("Alick");
  streamCtlr.sink.add("Alick");
  streamCtlr.sink.add("Davi");
  streamCtlr.sink.add("Ana");
}
