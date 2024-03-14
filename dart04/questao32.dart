abstract class FiguraGeometrica {
  double calcularArea();
  double calcularPerimetro();
}

class LosangoColorido implements FiguraGeometrica {
  double diagonalMaior;
  double diagonalMenor;
  String corPreenchimento;

  LosangoColorido(this.diagonalMaior, this.diagonalMenor, this.corPreenchimento);

  @override
  double calcularArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }

  @override
  double calcularPerimetro() {
    return 4 * diagonalMaior;
  }

  // Método para exibir detalhes do losango colorido
  void exibirDetalhes() {
    print("Diagonal Maior: $diagonalMaior");
    print("Diagonal Menor: $diagonalMenor");
    print("Cor de Preenchimento: $corPreenchimento");
    print("Área do Losango: ${calcularArea()}");
    print("Perímetro do Losango: ${calcularPerimetro()}");
  }
}

void main() {
  // Criando um losango colorido
  var losango = LosangoColorido(8, 6, "Amarelo");

  // Exibindo detalhes do losango colorido
  losango.exibirDetalhes();
}