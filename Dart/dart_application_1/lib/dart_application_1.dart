import 'dart:ffi';
import 'dart:io';

//Ex A1
String olaMundo() {
  return 'Olá, mundo!';
}

//Ex A2
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

//Ex A4
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

//Ex B1
String numerosPares() {
  print("Gostaria de quantos números pares em sequência?");
  int tam = stdin.readLineSync();
  if (tam.isEmpty) {
    return 'Digite um número válido';
  } else {  
  List n = [];
  n.length = tam;
  int i=0; 
  while(n.length < tam){
    if(i%2==0){
      n.add(i);
    }
    i++;
  }
  }
  return 'Estes são os números pares: $n';
}

