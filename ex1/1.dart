void main() {
  List<String> list = ["Hac", "Kat", "Panir"];

  list.add("dzu");
  list.insert(1, "xndzor");
  list.removeAt(2);
  list[0] = "lavash";

  print(list.first);
  print(list.last);

  print(list.isEmpty);

  print(list);
}