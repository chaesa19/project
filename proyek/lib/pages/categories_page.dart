import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyek/models/product.dart';
import 'package:proyek/pages/cart_page.dart';
import 'package:proyek/pages/detail_produk_page.dart';
import 'package:http/http.dart' as http;
import 'package:proyek/pages/produk_deskripsi_page.dart';
import 'package:proyek/pages/riwayat_upcoming_page.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }

  Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/products'));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body)['data'];
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  Widget header() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/images/icon_back.png',
                          color: Colors.black,
                          width: 40,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Beras',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 4000,
            height: 5,
            color: Color.fromARGB(255, 229, 229, 229), // Warna divider
          ),
        ],
      ),
    );
  }

  Widget navbar() {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      width: 430,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFFF5EFE6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesPage()),
              );
            },
            child: Image.asset(
              'assets/images/home.png',
              width: 24,
              height: 24,
              color: Colors.black, // Icon color
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RiwayatUpcomingPage()),
              );
            },
            child: Image.asset(
              'assets/images/riwayat.png',
              width: 24,
              height: 24,
              color: Colors.black, // Icon color
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RiwayatUpcomingPage()),
              );
            },
            child: Image.asset(
              'assets/images/user2.png',
              width: 24,
              height: 24,
              color: Colors.black, // Icon color
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductItem(Product product) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProdukDeskripsiPage()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: 114,
        height: 200,
        child: Column(
          children: [
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEFEFF0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              product.name,
              style: TextStyle(
                color: Color(0xFF1A4D2E),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Rp. ${product.harga.toStringAsFixed(2)}/kg',
              style: TextStyle(
                color: Color(0xFF1A4D2E),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductList(List<Product> products) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return buildProductItem(products[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FutureBuilder<List<Product>>(
                future: futureProducts,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Product> products = snapshot.data!;
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          header(),
                          SizedBox(height: 20),
                          buildProductList(products),
                          SizedBox(height: 30),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
            navbar(),
          ],
        ),
      ),
    );
  }
}
