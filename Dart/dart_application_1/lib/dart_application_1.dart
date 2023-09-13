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
  String resposta = stdin.readLineSync() ?? "";
  if (resposta.isEmpty) {
    return 'Digite um número válido';
  } else {  
    int tam = int.parse(resposta);
    List n = [];
    n.length = tam;
    int i=0; 
    while(n.length < tam){
      if(i%2==0){
        n.add(i);
      }
      i++;
    }
    return 'Estes são os números pares: $n';
  }
}

//Ex B2
String funcBubbleSort() {
	int i, j, aux = 0;
  List lista = [7,1,6,2,5,3,4];
	
	for (i = 0; i < lista.length; i++) {
		for (j = 0; j < lista.length - i - 1; j++) {
			if (lista[j] > lista[j+1] ) {
				aux = lista[j];
				lista[j] = lista[j+1];
				lista[j+1] = aux;
			}
    }
  }
  int maior = lista[lista.length-1];
  int menor = lista[0];
  
  return '$menor é o menor e $maior é o maior';
}

//Ex B3
void mapaIdadeNomes() {  
  var mapList = Map<int, String>();
  mapList[21]="Leonardo";
  mapList[20]="Laura";
  mapList[22]="Thiago";
  
  mapList.forEach((key, value) {
    print('$key : $value');
  });	
}

//Ex B4
String intersec() {
  List lista1 = [5,3,6,7,7,2,9];
  List lista2 = [0,1,2,2,3,4,5];
  List encontro = [];
	
	for (int i in lista1) {
    if (lista2.contains(i)) {
      encontro.add(i);
    }    
  }
  return "A intersecção entre os conjuntos é $encontro";
}
