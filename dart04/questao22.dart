class ContaBancaria {
  int numeroConta;
  double saldo;
  String titular;

  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  // Método para depositar dinheiro na conta
  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo");
  }

  // Método para sacar dinheiro da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo");
    } else {
      print("Saldo insuficiente para realizar o saque.");
    }
  }

  // Método para exibir detalhes da conta
  void exibirDetalhes() {
    print("Número da Conta: $numeroConta");
    print("Titular: $titular");
    print("Saldo: R\$ $saldo");
  }
}

class ContaInvestimento extends ContaBancaria {
  double taxaRendimento;

  ContaInvestimento(int numeroConta, double saldo, String titular, this.taxaRendimento)
      : super(numeroConta, saldo, titular);

  // Método para calcular o rendimento da conta de investimento
  double calcularRendimento() {
    return saldo * (taxaRendimento / 100);
  }

  // Sobrescrevendo o método para exibir detalhes da conta
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print("Taxa de Rendimento: $taxaRendimento%");
  }
}

void main() {
  // Criando uma instância da classe ContaInvestimento
  ContaInvestimento contaInvestimento = ContaInvestimento(1234, 10000.0, "João", 5);

  // Exibindo detalhes da conta de investimento
  contaInvestimento.exibirDetalhes();

  // Calculando e exibindo o rendimento da conta de investimento
  double rendimento = contaInvestimento.calcularRendimento();
  print("Rendimento: R\$ $rendimento");
}