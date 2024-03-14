import 'dart:math';

class Triangulo {
  double lado1;
  double lado2;
  double lado3;

  Triangulo(this.lado1, this.lado2, this.lado3);

  // Método para verificar se é um triângulo
  bool verificarTriangulo() {
    if (lado1 + lado2 > lado3 &&
        lado1 + lado3 > lado2 &&
        lado2 + lado3 > lado1) {
      return true;
    } else {
      return false;
    }
  }

  // Método para calcular a área do triângulo usando a fórmula de Heron
  double calcularArea() {
    double s = (lado1 + lado2 + lado3) / 2;
    double area = sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
    return area;
  }
}

void main() {
  // Criando uma instância da classe Triangulo
  Triangulo triangulo = Triangulo(3, 4, 5);

  // Verificando se é um triângulo
  if (triangulo.verificarTriangulo()) {
    // Calculando e exibindo a área do triângulo
    double area = triangulo.calcularArea();
    print("Área do triângulo: $area");
  } else {
    print("Os lados fornecidos não formam um triângulo.");
  }
}