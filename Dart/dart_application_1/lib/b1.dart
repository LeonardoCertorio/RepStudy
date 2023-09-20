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
void main() {
  print(numerosPares()); //1B
}