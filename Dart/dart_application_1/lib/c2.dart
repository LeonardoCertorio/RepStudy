class Retangulo {

  double base;
  double altura;

  Retangulo(
    this.altura, 
    this.base
  );

  double calculaArea() {
    return base * altura;
  }

  double calculaPerimetro() {
    return (2*base + 2*altura);
  }
}

void main() {
  print("Digite a base...");
  //Se vier nulo, a variável nome recebe uma string vazia = " "
  String? base = stdin.readLineSync() ?? " ";
  if (base.trim().isEmpty) {
    print("Não foi digitado um número!");    
  }
  print("Digite a altura...");
  //Se vier nulo, a variável idade recebe uma string vazia = " "
  String? altura = stdin.readLineSync() ?? " ";
  if (altura.trim().isEmpty) {
    print("Não foi digitado um número!");    
  }

  Retangulo retangulo = Retangulo(base, altura);

  double area = retangulo.calculaArea();
  double perimetro = retangulo.calculaPerimetro();

  print("A área vale: $area e o perímetro: $perimetro");
}
