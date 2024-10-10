import 'package:flutter/material.dart';
import 'package:proyek/pages/pembayaran_page.dart';
import 'package:proyek/pages/riwayat_upcoming_page.dart';

class TransaksiPage extends StatefulWidget {
  @override
  _TransaksiPageState createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  TextEditingController _noRekeningController = TextEditingController();
  TextEditingController _jumlahTransferController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _noRekeningController.addListener(_updateButtonStatus);
    _jumlahTransferController.addListener(_updateButtonStatus);
  }

  @override
  void dispose() {
    _noRekeningController.removeListener(_updateButtonStatus);
    _jumlahTransferController.removeListener(_updateButtonStatus);
    _noRekeningController.dispose();
    _jumlahTransferController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = _noRekeningController.text.isNotEmpty &&
          _jumlahTransferController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget pembayaran() {
      return Center(
        child: Container(
          width: 350,
          decoration: BoxDecoration(
            color: Color(0x30D9D9D9),
            borderRadius: BorderRadius.circular(21),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Color(0xFFE9E7E7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Image.asset(
                        "assets/images/bca.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bank BCA',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Desa Pringgowijayan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'No Rekening',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 300,
                      height: 41,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E5E5),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: TextField(
                        controller: _noRekeningController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'No Rekening',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Jumlah Transfer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 300,
                      height: 41,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E5E5),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: TextField(
                        controller: _jumlahTransferController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan jumlah transfer',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pastikan jumlahnya benar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
              onTap: _isButtonEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RiwayatUpcomingPage()),
                      );
                    }
                  : null,
              child: Container(
                width: 130,
                height: 45,
                decoration: ShapeDecoration(
                  color: _isButtonEnabled
                      ? Color(0xFF1A4D2E)
                      : Colors
                          .grey, // Menggunakan warna abu-abu jika tombol dinonaktifkan
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(41),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sudah Transfer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF5EE),
                      fontSize: 12,
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

    Widget header() {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
              SizedBox(
                width: 80,
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
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 229, 229, 229),
            thickness: 5,
          ),
        ],
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
                      pembayaran(),
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
