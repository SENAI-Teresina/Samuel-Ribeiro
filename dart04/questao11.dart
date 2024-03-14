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

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, 'Cachorro', idade);

  // Método para o cachorro latir
  void latir() {
    print("$nome está latindo: Au Au!");
  }

  // Método para o cachorro brincar
  void brincar() {
    print("$nome está brincando.");
  }
}

void main() {
  // Criando uma instância da classe Cachorro
  Cachorro cachorro = Cachorro("Rex", 5);

  // Exibindo detalhes do cachorro
  cachorro.exibirDetalhes();

  // Fazendo o cachorro latir
  cachorro.latir();

  // Fazendo o cachorro brincar
  cachorro.brincar();
}