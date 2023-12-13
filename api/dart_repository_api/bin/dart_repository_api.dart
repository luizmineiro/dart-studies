import 'repository/repository.dart';

void main() async {
  //* Repository é responsavel por aramazenar a camada de dados do app

  final repository = Repository();

  final listaDePosts = await repository.getPosts();

  print(listaDePosts.length);


  final listaDePostsFiltrados = await repository.filterResource(2);
  print(listaDePostsFiltrados.length);
}
