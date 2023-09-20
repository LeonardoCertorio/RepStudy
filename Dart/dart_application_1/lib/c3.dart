class ContaBancaria {

  String titularCta;
  double saldo;

  ContaBancaria(
    this.titularCta, 
    this.saldo
  );

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print("Saldo insuficiente");
    }
  }

  void imprimirSaldo() {
    print("Saldo: $saldo reais");
  }
}

void main() {
  ContaBancaria conta = ContaBancaria("José", 0);
  print("|O que deseja?       |");
  print("----------------------");
  print("| 1 - Depositar      |");
  print("| 2 - Sacar          |");
  print("| 3 - Imprimir saldo |");
  print("| 4 - Sair           |");
  print("----------------------");
  //Se vier nulo, a variável nome recebe uma string vazia = " "
  String? opcao = stdin.readLineSync() ?? " ";
  if (opcao.trim().isEmpty) {
    print("Não foi digitado uma opção válida!");    
  }

  if (opcao==1) {
    print("Qual será o valor?")
    String? valor = stdin.readLineSync() ?? " ";
    if (valor.trim().isEmpty) {
      print("Não foi digitado nenhum valor!");    
    }
    conta.depositar(valor);
  } else if (opcao==2) {
    print("Qual será o valor?")
    String? valor = stdin.readLineSync() ?? " ";
    if (valor.trim().isEmpty) {
      print("Não foi digitado nenhum valor!");    
    }
    conta.sacar(valor);
  } else if (opcao==3) {
    conta.imprimirSaldo();
  } else {
    
  }
}