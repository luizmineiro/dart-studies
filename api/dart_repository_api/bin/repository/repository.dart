import 'dart:convert';

import '../model/posts_model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String url = "https://jsonplaceholder.typicode.com/";

  Future<List<PostModel>> getPosts() async {
    final response = await http.get(Uri.parse('${url}posts'));

    if (response.statusCode < 300) {
      final responseBodyMap = jsonDecode(response.body);
      final List<PostModel> listaDePosts = responseBodyMap
          .map<PostModel>((post) => PostModel.fromMap(post))
          .toList();

      return listaDePosts;
    } else {
      print("OCORREU ALGUM ERRO");
      return [];
    }
  }

  Future<List<PostModel>> filterResource(int userId) async {
    //* Query params são parametros passados na url
    //* eles são separados pelo & e começam a partir do ?
    final response = await http.get(Uri.parse('${url}posts?userId=$userId'));

    if (response.statusCode < 300) {
      final responseBodyMap = jsonDecode(response.body);
      final List<PostModel> listaDePosts = responseBodyMap
          .map<PostModel>((post) => PostModel.fromMap(post))
          .toList();

      return listaDePosts;
    } else {
      print("OCORREU ALGUM ERRO");
      return [];
    }
  }

  Future<PostModel?> getPost(int id) async {
    final response = await http.get(Uri.parse('${url}posts/$id'));

    if (response.statusCode < 300) {
      final responseBodyMap = jsonDecode(response.body);

      return PostModel.fromMap(responseBodyMap);
    } else {
      print("OCORREU ALGUM ERRO");
      return null;
    }
  }

  Future<PostModel?> updatePost(int id, Map<String, dynamic> map) async {
    final response = await http.patch(
      Uri.parse("${url}posts/$id"),
      body: jsonEncode(map),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode < 300) {
      final responseBodyMap = jsonDecode(response.body);
      return PostModel.fromMap(responseBodyMap);
    } else {
      print("OCORREU ALGUM ERRO");
      return null;
    }
  }

  Future<void> deletePost(int id) async {
    final response = await http.delete(Uri.parse('${url}posts/$id'));

    if (response.statusCode >= 300) {
      print("OCORREU ALGUM ERRO");
    } else {
      print("O POST FOI DELETADO COM SUCESSO");
    }
  }

  Future<PostModel?> createPost(Map<String, dynamic> map) async {
    final response = await http.post(
      Uri.parse('${url}posts'),
      body: jsonEncode(map),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode < 300) {
      final map = jsonDecode(response.body);
      return PostModel.fromMap(map);
    } else {
      print("OCORREU ALGUM ERRO");
      return null;
    }
  }
}
