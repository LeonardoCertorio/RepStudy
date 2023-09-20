//Ex A3
String compara() {
  print("Digite um número...");
  //Se vier nulo, a variável nome recebe uma string vazia = "Não foi digitado um número!"
  String numDigitado = stdin.readLineSync() ?? "";
  
  if (numDigitado.trim().isEmpty) {
    return ("Não foi digitado um número!");    
  }
  
  int num = int.parse(numDigitado);
  String parImpar;

  if (!(num ~/2 != (num/2))) {
    parImpar = 'O número digitado é par';
  } else {
    parImpar = 'O número digitado é ímpar';
  }

  return parImpar;
}
void main() {
    print(compara()); //3A
}