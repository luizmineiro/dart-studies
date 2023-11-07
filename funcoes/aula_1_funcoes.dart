void main() {
  falarOlar();
  falarMeuNome("João Luiz");
  print(areaDoQuadrado(12, 7.8));
}

void falarOlar() {
  print("Olá Mundo");
}

void falarMeuNome(String nome) {
  print(nome);
}

String areaDoQuadrado(double ladoUm, double ladoDois) {
  double resultado = ladoUm * ladoDois;
  return "A area do quadrado é $resultado";
}
