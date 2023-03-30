//Create a list of maps, where each map represents a product with a
//name, price, and quantity. Sort the list by the total cost of each product
//(price x quantity) in descending order

void main() {
  List<Map<String, dynamic>> products = [
    {"name": "Biryani", "price": 250, "quantity": 5},
    {"name": "karahi", "price": 600, "quantity": 2},
    {"name": "salad", "price": 100, "quantity": 2},
    {"name": "roti", "price": 30, "quantity": 4},
  ];

  // sorting the list in descending order.

  products.sort((a, b) =>
      (b["price"] * b["quantity"]).compareTo(a["price"] * a["quantity"]));

  print(products);
}
