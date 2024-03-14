class Circulo {
  double raio;
  String cor;

  Circulo(this.raio, this.cor);

  // Método para exibir detalhes do círculo
  void exibirDetalhes() {
    print("Raio do Círculo: $raio");
    print("Cor da Borda: $cor");
  }
}

class CirculoColorido extends Circulo {
  String corPreenchimento;

  CirculoColorido(double raio, String corBorda, this.corPreenchimento)
      : super(raio, corBorda);

  // Método para exibir detalhes do círculo colorido
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print("Cor de Preenchimento: $corPreenchimento");
  }
}

void main() {
  // Criando uma instância da classe CirculoColorido
  CirculoColorido circuloColorido =
      CirculoColorido(5.0, "azul", "vermelho");

  // Exibindo detalhes do círculo colorido
  circuloColorido.exibirDetalhes();
}