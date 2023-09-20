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
void main() {
  print(funcBubbleSort()); //2B
}