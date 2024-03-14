class Estudante {
  String nome;
  int matricula;
  String curso;
  List<double> notas;

  Estudante(this.nome, this.matricula, this.curso, this.notas);

  // Método para calcular a média das notas
  double calcularMedia() {
    if (notas.isEmpty) {
      return 0;
    }
    double soma = notas.reduce((a, b) => a + b);
    return soma / notas.length;
  }

  // Método para exibir detalhes do estudante
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Matrícula: $matricula");
    print("Curso: $curso");
    print("Notas: $notas");
    print("Média: ${calcularMedia().toStringAsFixed(2)}");
  }
}

void main() {
  // Criando uma instância da classe Estudante
  Estudante estudante = Estudante("João", 123456, "Engenharia", [8.5, 7.5, 9.0, 6.0]);

  // Exibindo detalhes do estudante
  estudante.exibirDetalhes();
}