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
}
