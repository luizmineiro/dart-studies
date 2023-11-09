class Carro {
  final String marca;
  final int numeroDePortas;
  bool _automatico = false;
  static const bool contemMotor = true;
  String _cor = "preto";

  Carro(this.marca, this.numeroDePortas, {bool? automatico}) {
    if (automatico == null) {
      _automatico = false;
    } else {
      _automatico = automatico;
    }
  }

  String get getAutomatico {
    if (_automatico) {
      return "Esse carro da marca $marca é automatico";
    } else {
      return "Esse carro da marca $marca não é automatico";
    }
  }

  void set setCor(String cor) {
    this._cor = cor;
  }

  String get getCor => _cor;

  static void fazerRoncoDoMotor() {
    return print("Vruummm vruummm");
  }

  void imprimirNumeroDePortas() {
    return print("Esse carro da marca $marca possui $numeroDePortas portas");
  }
}
