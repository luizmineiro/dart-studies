class Animal {
  void cicloDoAnimal() {
    print("Nasce, cresce, reproduz e morre");
  }
}

class Gato extends Animal {
  void miar() {
    print("MIAUUUUUUU");
  }
}

class Cachorro extends Animal {
  void latir() {
    print("AU AU AU AU AU");
  }
}

class Passaro extends Animal with Voar {
  void piar() {
    print("PIU PIU PIU PIU");
  }
}

mixin Voar {
  void voar() {
    print("ESTOU VOANDO");
  }
}
