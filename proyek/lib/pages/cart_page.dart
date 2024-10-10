import 'package:flutter/material.dart';
import 'package:proyek/pages/detail_produk_page.dart';
import 'package:proyek/pages/pembayaran_page.dart';
import 'package:proyek/pages/transaksi_page.dart';
import 'package:proyek/widgets/jumlah_product.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                'Keranjang',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/cart.png',
                  width: 20,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 229, 229, 229),
            thickness: 5,
          ),
        ],
      );
    }

    Widget product1() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              height: 90,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFF0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Color(0xFFAEB0B6)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Image.asset('assets/images/ciherang.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Beras Ciherang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Rp. 000,00/kg',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                JumlahProduct(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 73,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDD273C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    // Menambahkan Center untuk memastikan teks berada di tengah
                    child: Text(
                      'hapus',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1, // Perbaikan nilai height agar tidak error
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget product2() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              height: 90,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFF0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Color(0xFFAEB0B6)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Image.asset('assets/images/ciherang.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Beras Ciherang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Rp. 000,00/kg',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                JumlahProduct(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 73,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDD273C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    // Menambahkan Center untuk memastikan teks berada di tengah
                    child: Text(
                      'hapus',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1, // Perbaikan nilai height agar tidak error
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget navbar() {
      return Container(
        width: double.infinity,
        height: 70,
        decoration: ShapeDecoration(
          color: Color(0xFFF5EFE6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Rp. 000,00/kg',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PembayaranPage()),
                );
              },
              child: Container(
                width: 120,
                height: 45,
                decoration: ShapeDecoration(
                  color: Color(0xFF1A4D2E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(41),
                  ),
                ),
                child: Center(
                  child: Text(
                    'keranjang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF5EE),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 0),
                      header(),
                      SizedBox(height: 10),
                      product1(),
                      SizedBox(height: 10),
                      product2(),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
            navbar(),
          ],
        ),
      ),
    );
  }
}
