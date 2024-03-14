class Bicicleta {
  String marca;
  String modelo;
  int numeroMarchas;

  Bicicleta(this.marca, this.modelo, this.numeroMarchas);

  // Método para exibir detalhes da bicicleta
  void exibirDetalhes() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Número de Marchas: $numeroMarchas");
  }
}

void main() {
  // Criando uma instância da classe Bicicleta
  Bicicleta bicicleta = Bicicleta("Caloi", "Mountain Bike", 21);

  // Exibindo detalhes da bicicleta
  bicicleta.exibirDetalhes();
}