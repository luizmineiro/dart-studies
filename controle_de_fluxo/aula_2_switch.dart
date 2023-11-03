void main() {
  num? nota;
  String nome = "João";

  // if (nome == "João") {
  //   nota = 10;
  // } else if (nome == "Fernanda") {
  //   nota = 9.5;
  // } else if (nome == "Priscila") {
  //   nota = 8;
  // } else {
  //   nota = 5;
  // }

  switch (nome) {
    case "João":
      nota = 10;
      break;
    case "Fernanda":
      nota = 9.5;
      break;
    case "Priscila":
      nota = 8;
      break;
    default:
      nota = 5;
      break;
  }
}
