class Livro {
  String titulo;
  String autor;
  int numeroPaginas;

  Livro(this.titulo, this.autor, this.numeroPaginas);

  // Método para exibir detalhes do livro
  void exibirDetalhes() {
    print("Título do Livro: $titulo");
    print("Autor: $autor");
    print("Número de Páginas: $numeroPaginas");
  }
}

void main() {
  // Criando uma instância da classe Livro
  Livro livro = Livro("Dom Quixote", "Miguel de Cervantes", 863);

  // Exibindo detalhes do livro
  livro.exibirDetalhes();
}