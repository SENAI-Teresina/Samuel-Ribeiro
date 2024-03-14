class Fruta {
  String nome;
  String cor;
  String sabor;

  Fruta(this.nome, this.cor, this.sabor);

  // Método para exibir detalhes da fruta
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Cor: $cor");
    print("Sabor: $sabor");
  }
}

void main() {
  // Criando uma instância da classe Fruta
  Fruta fruta = Fruta("Maçã", "Vermelha", "Doce");

  // Exibindo detalhes da fruta
  fruta.exibirDetalhes();
}