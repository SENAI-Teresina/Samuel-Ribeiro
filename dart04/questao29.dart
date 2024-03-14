class Aviao {
  String modelo;
  String fabricante;
  int numPassageiros;

  Aviao(this.modelo, this.fabricante, this.numPassageiros);

  // Método para exibir detalhes do avião
  void exibirDetalhes() {
    print("Modelo: $modelo");
    print("Fabricante: $fabricante");
    print("Número de Passageiros: $numPassageiros");
  }
}

void main() {
  // Criando uma instância da classe Aviao
  Aviao aviao = Aviao("Boeing 737", "Boeing", 150);

  // Exibindo detalhes do avião
  aviao.exibirDetalhes();
}