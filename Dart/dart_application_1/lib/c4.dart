abstract class Forma {double area();}

class Circulo implements Forma {
  double raio;

  Circulo(this.raio);

  @override
  double area() {return 3.14159 * raio*raio;}
}

class Retangulo implements Forma {
  double largura;
  double altura;

  Retangulo(
    this.largura, 
    this.altura
  );

  @override
  double area() {return largura*altura;}
}

void main() {
  Forma circulo = Circulo(1);
  Forma retangulo = Retangulo(2,3);

  print("Área do círculo vale ${circulo.area()} e a do retângulo vale ${retangulo.area()}");
}