class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> result = {};

  for (int i = 0; i < products.length; i++) {
    if (result.containsKey(products[i].category)) {
      result[products[i].category] =
          result[products[i].category]! + products[i].price;
    } else {
      result[products[i].category] = products[i].price;
    }
  }

  return result;
}

void main() {
  List<Product> products = [
    Product("Hac", "Snund", 300),
    Product("Kat", "Snund", 500),
    Product("Grich", "Grenakan", 200)
  ];

  print(totalByCategory(products));
}