import 'repository/repository.dart';

void main() async {
  //* Repository é responsavel por aramazenar a camada de dados do app

  final repository = Repository();

  final listaDePosts = await repository.getPosts();
  print(listaDePosts.length);

  final listaDePostsFiltrados = await repository.filterResource(2);
  print(listaDePostsFiltrados.length);

  final post = {
    'title': 'foo',
    'body': 'bar',
    'userId': 1,
  };
  //* criando um post
  final createdPost = await repository.createPost(post);
  print('Post criado ${createdPost?.title}');

  //* deletando um post
  await repository.deletePost(1);

  //* atualizando um post
  final updatePost = await repository.updatePost(
    1,
    {'title': 'Post atualizado com sucesso'},
  );
  print("${updatePost?.title}");

  //* pegar um post
  final pegarPost = await repository.getPost(1);
  print(pegarPost?.title);
}
