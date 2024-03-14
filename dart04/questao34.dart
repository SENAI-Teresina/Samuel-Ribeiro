abstract class VeiculoTerrestre {
  String get marca;
  String get modelo;
  int get anoFabricacao;

  // Método para exibir detalhes do veículo
  void exibirDetalhes() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano de Fabricação: $anoFabricacao");
  }
}

// Exemplo de classe que implementa a interface VeiculoTerrestre
class Carro implements VeiculoTerrestre {
  @override
  String marca;
  @override
  String modelo;
  @override
  int anoFabricacao;

  Carro(this.marca, this.modelo, this.anoFabricacao);
}

void main() {
  // Criando um carro
  var carro = Carro("Toyota", "Corolla", 2022);

  // Exibindo detalhes do carro
  carro.exibirDetalhes();
}