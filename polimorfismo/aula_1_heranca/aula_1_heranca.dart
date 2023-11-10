import 'cozinheiro.dart';
import 'desenvolvedor_de_app.dart';
import 'pessoa.dart';

void main() {
  final pessoa1 = Pessoa();
  pessoa1.falar();

  print("================================================");

  //* Herdou as caracteristicas da classe pessoa (Metodo falar e o numero de cerebrs)
  final desenvolvedorDeApp1 = DesenvolvedorDeApp();
  print(desenvolvedorDeApp1.linguagemDeProgramacao);
  print(desenvolvedorDeApp1.numeroDeCerebros);
  desenvolvedorDeApp1.falar();

  print("================================================");

  final cozinheiro1 = Cozinheiro();
  print(cozinheiro1.receitaEspecial);
  cozinheiro1.falar();
}
