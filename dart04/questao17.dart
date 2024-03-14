import 'dart:math';

class Retangulo {
  double comprimento;
  double largura;
  String cor;

  Retangulo(this.comprimento, this.largura, this.cor);

  // Método para calcular a área do retângulo
  double calcularArea() {
    return comprimento * largura;
  }

  // Método para calcular o perímetro do retângulo
  double calcularPerimetro() {
    return 2 * (comprimento + largura);
  }

  // Método para exibir detalhes do retângulo
  void exibirDetalhes() {
    print("Comprimento: $comprimento");
    print("Largura: $largura");
    print("Cor: $cor");
  }
}

class Quadrado extends Retangulo {
  Quadrado(double lado, String cor) : super(lado, lado, cor);

  // Método para calcular a diagonal do quadrado
  double calcularDiagonal() {
    return sqrt(2 * pow(comprimento, 2));
  }

  // Método para exibir detalhes do quadrado
  @override
  void exibirDetalhes() {
    print("Lado: $comprimento");
    print("Cor: $cor");
    print("Diagonal: ${calcularDiagonal().toStringAsFixed(2)}");
  }
}

void main() {
  // Criando uma instância da classe Quadrado
  Quadrado quadrado = Quadrado(5, "azul");

  // Exibindo detalhes do quadrado
  quadrado.exibirDetalhes();
}