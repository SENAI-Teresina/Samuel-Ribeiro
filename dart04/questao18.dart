class Funcionario {
  String nome;
  String cargo;
  double salario;

  Funcionario(this.nome, this.cargo, this.salario);

  // Método para calcular aumento de salário
  void calcularAumentoSalario(double percentualAumento) {
    double aumento = salario * percentualAumento / 100;
    salario += aumento;
    print("Aumento de salário aplicado. Novo salário: R\$ $salario");
  }

  // Método para exibir detalhes do funcionário
  void exibirDetalhes() {
    print("Nome: $nome");
    print("Cargo: $cargo");
    print("Salário: R\$ $salario");
  }
}

class FuncionarioHorista extends Funcionario {
  double horasTrabalhadas;
  double salarioHora;

  FuncionarioHorista(String nome, String cargo, this.horasTrabalhadas, this.salarioHora)
      : super(nome, cargo, 0);

  // Método para calcular o salário do funcionário horista
  @override
  void calcularAumentoSalario(double percentualAumento) {
    print("Aumento de salário não aplicável para funcionário horista.");
  }

  // Método para calcular o salário com base nas horas trabalhadas
  double calcularSalario() {
    return horasTrabalhadas * salarioHora;
  }

  // Sobrescrevendo o método para exibir detalhes do funcionário
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print("Horas Trabalhadas: $horasTrabalhadas");
    print("Salário por Hora: R\$ $salarioHora");
  }
}

void main() {
  // Criando uma instância da classe FuncionarioHorista
  FuncionarioHorista funcionarioHorista = FuncionarioHorista("João", "Atendente", 40, 15);

  // Calculando e exibindo o salário do funcionário horista
  double salario = funcionarioHorista.calcularSalario();
  print("Salário do funcionário horista: R\$ $salario");

  // Exibindo detalhes do funcionário horista
  funcionarioHorista.exibirDetalhes();
}