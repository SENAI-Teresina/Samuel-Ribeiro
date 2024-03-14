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

class Caminhao implements VeiculoTerrestre {
  @override
  String marca;
  @override
  String modelo;
  @override
  int anoFabricacao;
  double capacidadeCarga; // em toneladas
  String tipoCombustivel;

  Caminhao(this.marca, this.modelo, this.anoFabricacao, this.capacidadeCarga, this.tipoCombustivel);

  // Método para exibir detalhes do caminhão
  void exibirDetalhes() {
    super.exibirDetalhes();
    print("Capacidade de Carga: $capacidadeCarga toneladas");
    print("Tipo de Combustível: $tipoCombustivel");
  }
}

void main() {
  // Criando um caminhão
  var caminhao = Caminhao("Volvo", "FH", 2021, 25.5, "Diesel");

  // Exibindo detalhes do caminhão
  caminhao.exibirDetalhes();
}