void main() {
  //estrutura composta po chave valor
  Map<String, dynamic> pessoa = {
    "nome": "Joao",
    "sobrenome": "Luiz",
    "idade": 32,
  };
  print(pessoa);

  print(pessoa["idade"]);
  print(pessoa["nome"]);
}
