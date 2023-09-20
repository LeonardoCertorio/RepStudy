//Ex B5
void exclusivos() {
  List lista1 = [5,3,6,7,7,2,9];
  List lista2 = [0,1,2,2,3,4,5];
  List soma = lista1 + lista2;

  List encontro = [];
  List exclusivos = [];

  //Define a intersecção das listas
  for (int i in lista1) {
    if (lista2.contains(i)) {
      encontro.add(i);
    }    
  }

  //Define os exclusivos, subtraindo a união das listas pela intersecção
  for (var j in soma) {
    if (!encontro.contains(j)) {
      exclusivos.add(j);
    }
  }
  print("Elementos únicos das listas: $exclusivos");
}
void main() {
  dart_application_1.exclusivos(); //5B
}