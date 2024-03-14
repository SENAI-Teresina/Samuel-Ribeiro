abstract class FiguraGeometrica {
  // Método abstrato para calcular a área
  double calcularArea();

  // Método abstrato para calcular o perímetro
  double calcularPerimetro();
}

// Exemplo de classe que implementa a interface FiguraGeometrica
class Retangulo implements FiguraGeometrica {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() {
    return largura * altura;
  }

  @override
  double calcularPerimetro() {
    return 2 * (largura + altura);
  }
}

void main() {
  // Criando um retângulo
  var retangulo = Retangulo(5, 3);

  // Calculando e exibindo a área e o perímetro do retângulo
  print("Área do retângulo: ${retangulo.calcularArea()}");
  print("Perímetro do retângulo: ${retangulo.calcularPerimetro()}");
}