//Ex A2
String soma() {
  print("Digite um número...");
  //Se vier nulo, a variável nome recebe uma string vazia = " "
  String? primNum = stdin.readLineSync() ?? " ";
  if (primNum.trim().isEmpty) {
    print("Não foi digitado um número!");    
  }
  print("Digite o outro número...");
  //Se vier nulo, a variável idade recebe uma string vazia = " "
  String? segNum = stdin.readLineSync() ?? " ";
  if (segNum.trim().isEmpty) {
    print("Não foi digitado um número!");    
  }

  int num1 = int.parse(primNum);
  int num2 = int.parse(segNum);
  int calc = num1 +num2;

  return 'A soma é igual a $calc';
}
void main() {
  print(soma()); //2A
}