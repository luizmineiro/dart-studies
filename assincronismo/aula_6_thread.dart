void main() {
  // evento 1
  print("Evento 1");
  // evento 2
  print("Evento 2");
  // evento 3
  Future(() => print("Evento 3"));
  //evento 4
  // microtask tem prioridade sobre eventos assincronos normais 
  Future.microtask(() => print("evento 4"));
  //evento 5
  Future.delayed(
    Duration(seconds: 3),
    () => print("Evento 5"),
  );
  eventoSincDemorado();
  print("Evento 6");
}

void eventoSincDemorado(){
  for (var i = 0; i < 100; i++) {
    print(i);
  }
}
