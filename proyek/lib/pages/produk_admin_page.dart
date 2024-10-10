import 'package:flutter/material.dart';
import 'package:proyek/pages/riwayat_completed_page.dart';
import 'package:proyek/pages/riwayat_upcoming_page.dart';

class KategoriAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/icon_back.png',
                    color: Colors.black,
                    width: 40,
                  ),
                ),
                SizedBox(width: 100),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Row(
                    children: [
                      Text(
                        'Produk',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget pembatas() {
      return Container(
        width: 500,
        height: 6,
        decoration: BoxDecoration(color: Color.fromARGB(255, 227, 227, 227)),
      );
    }

    Widget produk1() {
      return Center(
        child: Container(
          width: 370,
          height: 112,
          decoration: ShapeDecoration(
            color: Color(0xFF1A4D2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Rp. 000,00/kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        width: 64,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Color(0xFF1A4D2E),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 234,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      );
    }

    Widget produk2() {
      return Center(
        child: Container(
          width: 370,
          height: 112,
          decoration: ShapeDecoration(
            color: Color(0xFF1A4D2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Rp. 000,00/kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        width: 64,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Color(0xFF1A4D2E),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 234,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      );
    }

    Widget produk3() {
      return Center(
        child: Container(
          width: 370,
          height: 112,
          decoration: ShapeDecoration(
            color: Color(0xFF1A4D2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Rp. 000,00/kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        width: 64,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Color(0xFF1A4D2E),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 234,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      );
    }

    Widget produk4() {
      return Center(
        child: Container(
          width: 370,
          height: 112,
          decoration: ShapeDecoration(
            color: Color(0xFF1A4D2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Rp. 000,00/kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        width: 64,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Color(0xFF1A4D2E),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 234,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      );
    }

    Widget produk5() {
      return Center(
        child: Container(
          width: 370,
          height: 112,
          decoration: ShapeDecoration(
            color: Color(0xFF1A4D2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Rp. 000,00/kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        width: 64,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Color(0xFF1A4D2E),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 234,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      );
    }

    Widget produk6() {
      return Center(
        child: Container(
          width: 370,
          height: 112,
          decoration: ShapeDecoration(
            color: Color(0xFF1A4D2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Rp. 000,00/kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        width: 64,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Color(0xFF1A4D2E),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 234,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ligula...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: 12,
                ),
                pembatas(),
                //pilihan(),
                SizedBox(
                  height: 12,
                ),
                produk1(),
                SizedBox(height: 10),
                produk2(),
                SizedBox(height: 10),
                produk3(),
                SizedBox(height: 10),
                produk4(),
                SizedBox(height: 10),
                produk5(),
                SizedBox(height: 10),
                produk6(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
