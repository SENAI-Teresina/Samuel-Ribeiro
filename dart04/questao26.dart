class ProdutoEletronico {
  String nome;
  double preco;
  int garantia; // em meses

  ProdutoEletronico(this.nome, this.preco, this.garantia);

  // Método para exibir detalhes do produto eletrônico
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Preço: R\$ $preco");
    print("Garantia: $garantia meses");
  }
}

void main() {
  // Criando uma instância da classe ProdutoEletronico
  ProdutoEletronico produto = ProdutoEletronico("Smartphone", 1500.0, 12);

  // Exibindo detalhes do produto eletrônico
  produto.exibirDetalhes();
}