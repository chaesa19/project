// lib/models/product.dart

class Product {
  final int id;
  final String name;
  final double harga;
  final double rating;
  final String description;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.harga,
    required this.rating,
    required this.description,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      harga: json['harga'],
      rating: json['rating'],
      description: json['description'],
      imageUrl: json['image_url'],
    );
  }
}



// final String url = "http://127.0.0.1:8001/api/products";

//   Future getProducts() async {
//     var respone = await http.get(Uri.parse(url));
//     print(json.decode(respone.body));
//     return json.decode(respone.body);
//   }