class Comodo {
  String nome;
  double area; // em metros quadrados

  Comodo(this.nome, this.area);

  // Método para calcular a área das paredes (considerando 4 paredes)
  double calcularAreaParedes() {
    return area * 4;
  }

  // Método para exibir detalhes do cômodo
  void exibirDetalhes() {
    print("Nome do Cômodo: $nome");
    print("Área do Cômodo: $area m²");
    print("Área das Paredes: ${calcularAreaParedes()} m²");
  }
}

void main() {
  // Criando uma instância da classe Comodo
  Comodo comodo = Comodo("Sala de Estar", 25);

  // Exibindo detalhes do cômodo
  comodo.exibirDetalhes();
}