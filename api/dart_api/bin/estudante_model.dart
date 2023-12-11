class Estudante {
  final String nome;
  final int idade;
  final String curso;
  final bool matriculado;

  Estudante({
    required this.nome,
    required this.idade,
    required this.curso,
    required this.matriculado,
  });

  //* Estamos passando um map no parametro para assim converter para um objeto da classe estudante
  factory Estudante.fromMap(Map<String, dynamic> map) {
    return Estudante(
      nome: map['nome'] ?? 'Anonimo',
      idade: map['idade'] ?? 18,
      curso: map['curso'] ?? '',
      matriculado: map['matriculado'] ?? false,
    );
  }
}
