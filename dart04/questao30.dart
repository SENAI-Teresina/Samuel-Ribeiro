class Empregado {
  String nome;
  String cargo;
  double salario;

  Empregado(this.nome, this.cargo, this.salario);

  // Método para calcular o bônus do empregado (10% do salário)
  double calcularBonus() {
    return salario * 0.10;
  }

  // Método para exibir detalhes do empregado
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Cargo: $cargo");
    print("Salário: R\$ $salario");
  }
}

void main() {
  // Criando uma instância da classe Empregado
  Empregado empregado = Empregado("João", "Desenvolvedor", 5000.0);

  // Exibindo detalhes do empregado
  empregado.exibirDetalhes();

  // Calculando e exibindo o bônus do empregado
  double bonus = empregado.calcularBonus();
  print("Bônus: R\$ $bonus");
}