import 'dart:async';

void main() {
  final streamCtrl = StreamController();

  final Stream stream = streamCtrl.stream.asBroadcastStream();

  stream.listen((event) {
    print(event);
  });

  stream.listen((event) {
    print(event);
  });

  stream.listen((event) {
    print(event);
  });

  streamCtrl.sink.add("João");
}
