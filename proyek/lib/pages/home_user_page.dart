import 'package:flutter/material.dart';
import 'package:proyek/pages/categories_page.dart';
import 'package:proyek/pages/profile.dart';
import 'package:proyek/pages/riwayat_upcoming_page.dart';

class HomeUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  MaterialPageRoute(
                      builder: (context) => RiwayatUpcomingPage()),
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
                  MaterialPageRoute(builder: (context) => ProfilePage()),
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

    Widget header() {
      return Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF5EE),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        'assets/images/pencarian.png',
                        width: 20.54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 19),
            Container(
              child: Image.asset(
                'assets/images/cart.png',
                width: 20.54,
              ),
            ),
          ],
        ),
      );
    }

    Widget text() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50, // Sesuaikan ukuran lebar gambar
              height: 60, // Sesuaikan ukuran tinggi gambar
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            SizedBox(
              width: 231,
              child: Text(
                'Selamat Datang, Pengguna!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget image() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 350,
                  child: Image.asset(
                    'assets/images/desa.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget text1() {
      return Container(
        child: Row(
          children: [
            Text(
              'Kategori',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //! BERAS
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman categories.dart ketika kategori "Beras" diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesPage()),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5EFE6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/images/beras.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 55,
                    child: Text(
                      'Beras',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //! CABAI
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman categories.dart ketika kategori "Cabai" diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CategoriesPage()), // Ganti CategoriesPage dengan nama halaman categories.dart Anda
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5EFE6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/images/cabai.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 55,
                    child: Text(
                      'Cabai',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //! KACANG HIJAU
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman categories.dart ketika kategori "Kacang Hijau" diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CategoriesPage()), // Ganti CategoriesPage dengan nama halaman categories.dart Anda
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5EFE6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/images/kacanghijau.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    child: Text(
                      'Kacang\nHijau',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //! TOMAT
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman categories.dart ketika kategori "Tomat" diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CategoriesPage()), // Ganti CategoriesPage dengan nama halaman categories.dart Anda
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5EFE6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/images/tomat.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 55,
                    child: Text(
                      'Tomat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget text2() {
      return Container(
        child: Row(
          children: [
            Text(
              'Produk  Terlaris',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );
    }

    Widget product() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! PRODUK
            Column(
              children: [
                Container(
                  width: 110,
                  height: 170,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5EFE6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(1),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/ciherang.jpg',
                                width: 100,
                                height: 100,
                              ),
                            )),
                        SizedBox(height: 6),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            color: Color(0xFF1A4D2E),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp. 000,00/kg',
                          style: TextStyle(
                            color: Color(0xFF1A4D2E),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            //! PRODUK
            Column(
              children: [
                Container(
                  width: 110,
                  height: 170,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5EFE6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(1),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/ciherang.jpg',
                                width: 100,
                                height: 100,
                              ),
                            )),
                        SizedBox(height: 6),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            color: Color(0xFF1A4D2E),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp. 000,00/kg',
                          style: TextStyle(
                            color: Color(0xFF1A4D2E),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            //! PRODUK
            Column(
              children: [
                Container(
                  width: 110,
                  height: 170,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5EFE6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(1),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/ciherang.jpg',
                                width: 100,
                                height: 100,
                              ),
                            )),
                        SizedBox(height: 6),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            color: Color(0xFF1A4D2E),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp. 000,00/kg',
                          style: TextStyle(
                            color: Color(0xFF1A4D2E),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(),
                      ],
                    ),
                  ),
                )
              ],
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      header(),
                      SizedBox(height: 20),
                      text(),
                      SizedBox(height: 20),
                      image(),
                      SizedBox(height: 30),
                      text1(),
                      SizedBox(height: 10),
                      categories(),
                      SizedBox(height: 10),
                      text2(),
                      SizedBox(height: 10),
                      product(),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            navbar(), // Display the navbar at the bottom
          ],
        ),
      ),
    );
  }
}
