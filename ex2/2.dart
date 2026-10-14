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
  Book book = Book("Kacin axper", "Hovhannes T.", 10);

  print(book.getInfo());
}