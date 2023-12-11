import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/posts_model.dart';

void main() async {
  final String url = "https://jsonplaceholder.typicode.com/";
  final response = await http.get(Uri.parse('${url}posts'));

  if (response.statusCode < 300) {
    final responseBodyMap = jsonDecode(response.body);
    final List<PostModel> listaDePosts = responseBodyMap
        .map<PostModel>((post) => PostModel.fromMap(post))
        .toList();

    print("Lista de posts: ${listaDePosts.length}");
  } else {
    print("OCORREU ALGUM ERRO");
  }
}
