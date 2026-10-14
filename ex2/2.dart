class Book {
  String ver;
  String hex;
  int ej;

  Book(this.ver, this.hex, this.ej);

  String getInfo() {
    return "$ver by $hex, $ej pages";
  }
}

void main() {
  Book book = Book("Harry Potter", "J.K. Rowling", 300);

  print(book.getInfo());
}