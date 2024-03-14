class Produto {
  String nome;
  double preco;
  int quantidadeEstoque;

  Produto(this.nome, this.preco, this.quantidadeEstoque);

  // Método para atualizar o estoque do produto
  void atualizarEstoque(int novaQuantidade) {
    quantidadeEstoque = novaQuantidade;
    print("Estoque atualizado para: $quantidadeEstoque");
  }

  // Método para exibir detalhes do produto
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Preço: R\$ $preco");
    print("Quantidade em Estoque: $quantidadeEstoque");
  }
}

void main() {
  // Criando uma instância da classe Produto
  Produto produto = Produto("Camiseta", 29.99, 100);

  // Atualizando o estoque do produto
  produto.atualizarEstoque(80);

  // Exibindo os detalhes do produto
  produto.exibirDetalhes();
}