mixin Printable {
  void informacao() {}
}

class Book with Printable {
  String titulo;
  String autor;
  String genero;
  int anoPublicacao;

  Book(
    this.titulo, 
    this.autor, 
    this.genero,
    this.anoPublicacao
  );

  @override
  void informacao() {
    print("|----------------------------------|");
    print("|Informações:                      |");
    print("|Titulo: $titulo                   |");
    print("|Autor: $autor                     |");
    print("|Gênero: $genero                   |");
    print("|Ano de publicação: $anoPublicacao |");
    print("|----------------------------------|");
  }
}

class Magazine with Printable {
  String titulo;
  String autor;
  String genero;
  int anoPublicacao;

  Magazine(
    this.titulo, 
    this.autor,
    this.genero, 
    this.anoPublicacao
  );

  @override
  void informacao() {
    print("|----------------------------------|");
    print("|Informações:                      |");
    print("|Titulo: $titulo                   |");
    print("|Autor: $autor                     |");
    print("|Gênero: $genero                   |");
    print("|Ano de publicação: $anoPublicacao |");
    print("|----------------------------------|");
  }
}

void main() {
  var livro = Book("Diário de um Banana", "José Junior", "Adolescente", 2022);
  var revista = Magazine("De'Luxe", "Luis Vitao", "Moda", 1998);

  livro.informacao();
  revista.informacao();
}