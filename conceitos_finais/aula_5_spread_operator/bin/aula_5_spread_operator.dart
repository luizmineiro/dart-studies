void main() {
  //* Operador criado para facilitar a fusão de duas lista
  final List<int> list1 = [1, 2, 3, 4, 5];

  final List<int> list2 = [6, 7, 8, 9, 10];

  final List<int> lista3 = [...list1, ...list2];

  print(lista3);
}
