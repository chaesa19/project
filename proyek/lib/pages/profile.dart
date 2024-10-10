import 'package:flutter/material.dart';
import 'package:proyek/pages/detail_produk_page.dart';
import 'package:proyek/pages/pembayaran_page.dart';
import 'package:proyek/pages/riwayat_upcoming_page.dart';
import 'package:proyek/pages/transaksi_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget profile() {
      return Container(
        width: 430,
        height: 700,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 50,
              child: Container(
                width: 400,
                height: 752,
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PembayaranPage()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/photo_profile.png'),
                    ),
                  ),
                  SizedBox(height: 10), // Beri jarak antara gambar dan teks
                  Container(
                    child: Text(
                      'Daniela Berg',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: 399,
                    height: 264,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 74,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email Anda',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Container(
                                width: 399,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    hintText: 'Masukkan email Anda',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 19),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nomor Telepon',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  width: 399,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      hintText: 'Masukkan nomor telepon Anda',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 19),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alamat',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  width: 300,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE6E5E5),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'No Rekening',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                    ),
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Color(0xFF1A4D2E), // Warna latar belakang utama
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      profile(),
                      SizedBox(height: 20),
                      //deskripsi(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              //navbar(), // Pastikan Anda mengaktifkan atau menambahkan navbar sesuai kebutuhan Anda
            ],
          ),
        ),
      ),
    );
  }
}
