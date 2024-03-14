class Celular {
  String marca;
  String modelo;
  String sistemaOperacional;

  Celular(this.marca, this.modelo, this.sistemaOperacional);

  // Método para exibir detalhes do celular
  void exibirDetalhes() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Sistema Operacional: $sistemaOperacional");
  }
}

void main() {
  // Criando uma instância da classe Celular
  Celular celular = Celular("Samsung", "Galaxy S21", "Android");

  // Exibindo detalhes do celular
  celular.exibirDetalhes();
}