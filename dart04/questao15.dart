class Pessoa {
  String nome;
  double altura; // em metros
  double peso; // em quilogramas

  Pessoa(this.nome, this.altura, this.peso);

  // Método para calcular o IMC (Índice de Massa Corporal)
  double calcularIMC() {
    double imc = peso / (altura * altura);
    return imc;
  }

  // Método para exibir detalhes da pessoa
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Altura: $altura m");
    print("Peso: $peso kg");
    double imc = calcularIMC();
    print("IMC: $imc");
  }
}

void main() {
  // Criando uma instância da classe Pessoa
  Pessoa pessoa = Pessoa("João", 1.75, 70);

  // Exibindo detalhes da pessoa
  pessoa.exibirDetalhes();
}