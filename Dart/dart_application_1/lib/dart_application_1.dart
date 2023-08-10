import 'dart:ffi';
import 'dart:io';

//Ex 1
String olaMundo() {
  return 'Olá, mundo!';
}

//Ex 2
String soma() {
  print("Digite um número...");
  //Se vier nulo, a variável nome recebe uma string vazia = " "
  String? primNum = stdin.readLineSync() ?? " ";
  if (primNum.trim().isEmpty) {
    return ("Não foi digitado um número!");    
  }
  print("Digite o outro número...");
  //Se vier nulo, a variável idade recebe uma string vazia = " "
  String? segNum = stdin.readLineSync() ?? " ";
  if (segNum.trim().isEmpty) {
    return ("Não foi digitado um número!");    
  }

  int num1 = int.parse(primNum);
  int num2 = int.parse(segNum);
  int calc = num1 +num2;

  return "A soma é igual a $calc";
}

//Ex 3
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

//Ex 4
String areaCirculo() {
  const pi = 3.1415;
  print("Digite o raio do círculo...");
  String raioDigitado = stdin.readLineSync() ?? "";
  
  if (raioDigitado.trim().isEmpty) {
    return ("Não foi digitado um número!");    
  }
  
  int raio = int.parse(raioDigitado);
  double calc = pi * (raio*raio);

  String area = calc.toStringAsFixed(3);

  return 'A área do círculo é $area';
}

//Ex 5
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

