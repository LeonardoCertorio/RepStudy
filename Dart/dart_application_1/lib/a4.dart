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
void main() {
  print(areaCirculo()); //4A
}