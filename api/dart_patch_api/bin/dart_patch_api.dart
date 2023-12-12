import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/posts_model.dart';

void main() async {
  final String url = "https://jsonplaceholder.typicode.com/";

  final data = {
    'title': 'Titulo do Post com edição patch',
  };

  final response = await http.patch(
    Uri.parse('${url}posts/1'),
    body: jsonEncode(data),
    headers: {'Content-type': 'application/json; charset=UTF-8'},
  );

  if (response.statusCode < 300) {
    final responseBodyMap = jsonDecode(response.body);
    final post = PostModel.fromMap(responseBodyMap);

    print("UserID: ${post.userId}");
    print("ID: ${post.id}");
    print("title: ${post.title}");
    print("body: ${post.body}");
  } else {
    print("OCORREU ALGUM ERRO");
  }
}
