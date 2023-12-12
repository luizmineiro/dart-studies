import 'package:http/http.dart' as http;

void main() async {
  final String url = "https://jsonplaceholder.typicode.com/";

  final response = await http.delete(
    Uri.parse('${url}posts/1'),
  );

  if (response.statusCode < 300) {
    print("Post deletado com sucesso");
  } else {
    print("OCORREU ALGUM ERRO");
  }
}
