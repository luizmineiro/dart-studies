void main() {
  final String cargo = "flutter dev";

  int salario = cargo == "flutter dev" ? 100000 : 3000;

  // if (cargo == "flutter dev") {
  //   salario = 100000;
  // } else {
  //   salario = 3000;
  // }

  print(salario);

  print("==============================");

  List<String> nomes = ["Theo", "João", "Alick", "Fernanda"];
  nomes.forEach((String nome) => print(nome));

  print("==============================");

  for (var nome in nomes) {
    print(nome);
  }
}
