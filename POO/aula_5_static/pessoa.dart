//* Static vai ser criado como uma variavel ou função geral para todas as classes

class Pessoa {
  static int numeroDeCerebros = 1;

  Pessoa() {
    numeroDeCerebros++;
    print("Numero de cerebros $numeroDeCerebros");
  }

  static void falarOla() {
    print("Ola");
    print(numeroDeCerebros);
  }
}
