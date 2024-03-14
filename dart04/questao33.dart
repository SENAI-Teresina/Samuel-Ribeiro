abstract class FiguraGeometrica {
  double calcularArea();
  double calcularPerimetro();
}

class Trapezio implements FiguraGeometrica {
  double baseMaior;
  double baseMenor;
  double altura;
  String cor;

  Trapezio(this.baseMaior, this.baseMenor, this.altura, this.cor);

  @override
  double calcularArea() {
    return (baseMaior + baseMenor) * altura / 2;
  }

  @override
  double calcularPerimetro() {
    double lado = ((baseMaior - baseMenor) / 2);
    double hipotenusa = lado / (altura / 2);
    double perimetro = (2 * lado) + baseMaior + baseMenor;
    return perimetro;
  }

  // Método para exibir detalhes do trapézio
  void exibirDetalhes() {
    print("Base Maior: $baseMaior");
    print("Base Menor: $baseMenor");
    print("Altura: $altura");
    print("Cor: $cor");
    print("Área do Trapézio: ${calcularArea()}");
    print("Perímetro do Trapézio: ${calcularPerimetro()}");
  }
}

void main() {
  // Criando um trapézio
  var trapezio = Trapezio(10, 6, 5, "Azul");

  // Exibindo detalhes do trapézio
  trapezio.exibirDetalhes();
}