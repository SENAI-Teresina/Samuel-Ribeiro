class ContaBancaria {
  int numeroConta;
  double saldo;
  String titular;

  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  // Método para depositar dinheiro na conta
  void depositar(double valor) {
    saldo += valor;
    print("Depósito de $valor realizado com sucesso. Novo saldo: $saldo");
  }

  // Método para sacar dinheiro da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de $valor realizado com sucesso. Novo saldo: $saldo");
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

class ContaCorrente extends ContaBancaria {
  double taxaManutencao;

  ContaCorrente(int numeroConta, double saldo, String titular, this.taxaManutencao)
      : super(numeroConta, saldo, titular);

  // Método para cobrar taxa de manutenção
  void cobrarTaxaManutencao() {
    saldo -= taxaManutencao;
    print("Taxa de manutenção cobrada. Novo saldo: $saldo");
  }

  // Sobrescrevendo o método para exibir detalhes da conta
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print("Taxa de Manutenção: R\$ $taxaManutencao");
  }
}

void main() {
  // Criando uma instância da classe ContaCorrente
  ContaCorrente contaCorrente = ContaCorrente(1234, 1000.0, "João", 10.0);

  // Exibindo detalhes da conta corrente
  contaCorrente.exibirDetalhes();

  // Cobrando taxa de manutenção
  contaCorrente.cobrarTaxaManutencao();
}