class Moto {
  String marca;
  String modelo;
  String cilindrada;

  Moto(this.marca, this.modelo, this.cilindrada);

  // Método para exibir detalhes da moto
  void exibirDetalhes() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Cilindrada: $cilindrada");
  }
}

void main() {
  // Criando uma instância da classe Moto
  Moto moto = Moto("Honda", "CBR 600RR", "600cc");

  // Exibindo detalhes da moto
  moto.exibirDetalhes();
}