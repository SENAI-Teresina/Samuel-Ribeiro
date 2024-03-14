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

class ContaPoupanca extends ContaBancaria {
  double taxaJuros;

  ContaPoupanca(int numeroConta, double saldo, String titular, this.taxaJuros)
      : super(numeroConta, saldo, titular);

  // Método para calcular os juros da conta poupança
  double calcularJuros() {
    return saldo * (taxaJuros / 100);
  }

  // Sobrescrevendo o método para exibir detalhes da conta
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print("Taxa de Juros: $taxaJuros%");
  }
}

void main() {
  // Criando uma instância da classe ContaPoupanca
  ContaPoupanca contaPoupanca = ContaPoupanca(1234, 1000.0, "João", 0.5);

  // Exibindo detalhes da conta poupança
  contaPoupanca.exibirDetalhes();

  // Calculando e exibindo os juros da conta poupança
  double juros = contaPoupanca.calcularJuros();
  print("Juros: R\$ $juros");
}