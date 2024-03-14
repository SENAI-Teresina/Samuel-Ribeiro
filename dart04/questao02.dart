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
}

void main() {
  // Criando uma instância da classe Retangulo
  Retangulo retangulo = Retangulo(5.0, 3.0, "azul");

  // Calculando e exibindo a área do retângulo
  double area = retangulo.calcularArea();
  print("Área do retângulo: $area");

  // Calculando e exibindo o perímetro do retângulo
  double perimetro = retangulo.calcularPerimetro();
  print("Perímetro do retângulo: $perimetro");
}