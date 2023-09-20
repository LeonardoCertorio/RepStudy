//Ex A5
String nomeIdade() {
  print("Bom dia, digite seu nome...");
  //Se vier nulo, a variável nome recebe uma string vazia = " "
  var nome = stdin.readLineSync() ?? " ";

  print("Agora digite sua idade...");
  //Se vier nulo, a variável idade recebe uma string vazia = " "
  var idade = stdin.readLineSync() ?? " ";

  if (nome.isEmpty || idade.isEmpty) {
    return 'Digite corretamente as duas informações';
  } else {
    return 'Bom dia, seu nome é $nome e você tem $idade anos';
  }
}
void main() {
  print(nomeIdade()); //5A
}