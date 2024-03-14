class Animal {
  String nome;
  String especie;
  int idade;

  Animal(this.nome, this.especie, this.idade);

  // Método para exibir detalhes do animal
  void exibirDetalhes() {
    print("Nome do Animal: $nome");
    print("Espécie: $especie");
    print("Idade: $idade");
  }
}

void main() {
  // Criando uma instância da classe Animal
  Animal animal = Animal("Rex", "Cachorro", 5);

  // Exibindo detalhes do animal
  animal.exibirDetalhes();
}