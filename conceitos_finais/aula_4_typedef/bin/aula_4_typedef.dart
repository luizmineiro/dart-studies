void main() {
  final FalarAlgo falarAlgo1 = falarOla;
  falarAlgo1("Joao");

  final FalarAlgo falarAlgo2 = falarApelido;
  falarAlgo2("Luiz");
}

void falarOla(String nome){
  print("Ola $nome");
}

void falarApelido(String apelido){
  print("Meu apelido é $apelido");
}

typedef FalarAlgo = void Function(String);
