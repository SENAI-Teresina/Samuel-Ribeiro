class Jogo {
  String nome;
  String genero;
  String plataforma;

  Jogo(this.nome, this.genero, this.plataforma);

  // Método para exibir informações sobre o jogo
  void exibirInformacoes() {
    print("Nome do Jogo: $nome");
    print("Gênero: $genero");
    print("Plataforma: $plataforma");
  }
}

void main() {
  // Criando uma instância da classe Jogo
  Jogo jogo = Jogo("The Last of Us Part II", "Ação e Aventura", "PlayStation 4");

  // Exibindo informações sobre o jogo
  jogo.exibirInformacoes();
}