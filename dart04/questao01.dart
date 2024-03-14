import 'dart:math';

class Circulo {
  double raio;
  String cor;

  Circulo(this.raio, this.cor);

  // Método para calcular a área do círculo
  double calcularArea() {
    return pi * raio * raio;
  }

  // Método para calcular o perímetro do círculo
  double calcularPerimetro() {
    return 2 * pi * raio;
  }
}

void main() {
  // Criando uma instância da classe Circulo
  Circulo circulo = Circulo(5.0, "vermelho");

  // Calculando e exibindo a área do círculo
  double area = circulo.calcularArea();
  print("Área do círculo: $area");

  // Calculando e exibindo o perímetro do círculo
  double perimetro = circulo.calcularPerimetro();
  print("Perímetro do círculo: $perimetro");
}