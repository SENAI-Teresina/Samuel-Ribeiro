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
}

void main() {
  // Criando uma instância da classe ContaBancaria
  ContaBancaria conta = ContaBancaria(1234, 1000.0, "João");

  // Depositando dinheiro na conta
  conta.depositar(500.0);

  // Sacando dinheiro da conta
  conta.sacar(200.0);
}
