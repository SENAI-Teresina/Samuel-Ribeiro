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

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, 'Gato', idade);

  // Método para o gato miar
  void miar() {
    print("$nome está miando: Miau!");
  }

  // Método para o gato dormir
  void dormir() {
    print("$nome está dormindo.");
  }
}

void main() {
  // Criando uma instância da classe Gato
  Gato gato = Gato("Frajola", 3);

  // Exibindo detalhes do gato
  gato.exibirDetalhes();

  // Fazendo o gato miar
  gato.miar();

  // Fazendo o gato dormir
  gato.dormir();
}