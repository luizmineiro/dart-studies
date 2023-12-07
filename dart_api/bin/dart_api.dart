import 'dart:convert';

import 'estudante_model.dart';

void main() {
  // JSON = um formato padrão baseado em texto criado basicamente para transmitir dados em aplicativos web

  final json = """
  {
    "nome": "João",
    "idade": 32,
    "curso": "Flutter dicas",
    "matriculado": true
  }
""";

  //! decodifica o json e transforma ele de String para Map<String, dynamic>
  final data = jsonDecode(json);

  final estudante = Estudante.fromMap(data);
  print(estudante.nome);
}
