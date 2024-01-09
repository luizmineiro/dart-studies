void main() {
  //* Tipo genericos

  final Map<String, dynamic> data = {"nome": "João"};
  print("Map<String, dynamic>: ${data.runtimeType}");

  final listaDeNumeros = List<String>.generate(5, (index) => "${index + 1}");
  print("List<String>: ${listaDeNumeros.runtimeType}");

  final respostaDaApi = RespostaDaAPI<List<Map>>([
    {"nome": "Luiz"},
    {"nome": "Bia"},
  ]);
  print("TipoDaRespostaDaAPI - List<Map> ${respostaDaApi.resposta.runtimeType}");
}

class RespostaDaAPI<TipoDaRespostaDaAPI> {
  final TipoDaRespostaDaAPI resposta;

  RespostaDaAPI(this.resposta);
}
