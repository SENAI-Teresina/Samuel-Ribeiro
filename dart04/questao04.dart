class Aluno {
  String nome;
  int idade;
  String curso;

  Aluno(this.nome, this.idade, this.curso);

  // Método para exibir os detalhes do aluno
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("Curso: $curso");
  }
}

void main() {
  // Criando uma instância da classe Aluno
  Aluno aluno = Aluno("João", 20, "Engenharia");

  // Exibindo os detalhes do aluno
  aluno.exibirDetalhes();
}