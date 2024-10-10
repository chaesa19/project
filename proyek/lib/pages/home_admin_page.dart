import 'package:flutter/material.dart';
import 'package:proyek/pages/produk_admin_page.dart';

class HomeAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            SizedBox(
              width: 269,
              height: 72,
              child: Text(
                'Selamat Datang, Admin!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget pengguna() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 342,
        height: 61,
        decoration: BoxDecoration(
          color: Color(0xFF1A4D2E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/images/user1.png'),
              SizedBox(width: 35),
              Text(
                'Kelola Pengguna',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget kategori() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 342,
        height: 61,
        decoration: BoxDecoration(
          color: Color(0xFF1A4D2E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/images/list.png'),
              SizedBox(width: 35),
              Text(
                'Kelola Kategori',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget produk() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 342,
        height: 61,
        decoration: BoxDecoration(
          color: Color(0xFF1A4D2E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KategoriAdminPage(),
              ),
            );
          },
          child: Row(
            children: [
              Image.asset('assets/images/cart1.png'),
              SizedBox(width: 35),
              Text(
                'Kelola Produk  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget pesanan() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 342,
        height: 61,
        decoration: BoxDecoration(
          color: Color(0xFF1A4D2E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/images/package.png'),
              SizedBox(width: 35),
              Text(
                'Kelola Pesanan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget logoutButton() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 342,
        height: 61,
        decoration: BoxDecoration(
          color: Color(0xFF1A4D2E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
          child: Text(
            'Logout',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 248, 247, 247),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                pengguna(),
                kategori(),
                produk(),
                pesanan(),
                logoutButton(), // Tambahkan tombol "Logout"
              ],
            ),
          ),
        ),
      ),
    );
  }
}
