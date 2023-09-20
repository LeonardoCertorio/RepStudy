class Pessoa {
  
  String nome;
  int idade;
  String profissao;
  
  Pessoa(
    this.nome, 
    this.idade, 
    this.profissao
  );

  void imprimirInfos() {
    print("Nome: $nome | Idade: $idade | Profissão: $profissao");
  }
}

void main() {
  Pessoa pessoa = Pessoa("José", 32, "Comerciante");
  pessoa.imprimirInfos();
}
