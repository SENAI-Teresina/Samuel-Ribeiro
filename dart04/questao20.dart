class DVD {
  String titulo;
  int duracao; // em minutos
  String diretor;

  DVD(this.titulo, this.duracao, this.diretor);

  // Método para exibir detalhes do DVD
  void exibirDetalhes() {
    print("Título: $titulo");
    print("Duração: $duracao minutos");
    print("Diretor: $diretor");
  }
}

void main() {
  // Criando uma instância da classe DVD
  DVD dvd = DVD("Piratas do Caribe", 143, "Gore Verbinski");

  // Exibindo detalhes do DVD
  dvd.exibirDetalhes();
}