//Ex B4
void intersec() {
  List lista1 = [5,3,6,7,7,2,9];
  List lista2 = [0,1,2,2,3,4,5];
  List encontro = [];
	
	for (int i in lista1) {
    if (lista2.contains(i)) {
      encontro.add(i);
    }    
  }
  print('A intersecção entre os conjuntos é $encontro');
}
void main() {
  dart_application_1.intersec(); //4B
}