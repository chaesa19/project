import 'package:flutter/material.dart';
import 'package:proyek/pages/home_user_page.dart';
import 'package:proyek/pages/riwayat_cancelled_page.dart';
import 'package:proyek/pages/riwayat_completed_page.dart';

class RiwayatUpcomingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeUserPage()),
                );
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
                    'Riwayat',
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
            )
          ],
        ),
      );
    }

    Widget pilihan() {
      return Center(
        child: Container(
          width: 362,
          height: 48,
          decoration: ShapeDecoration(
            color: Color(0xFFE2F5ED),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF08B783)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Color(0xFF08B783),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Upcoming',
                    style: TextStyle(
                      color: Color(0xFFF7F7F7),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RiwayatCompletedPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Completed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5A5A5A),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RiwayatCancelledPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Cancelled',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5A5A5A),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget daftar() {
      return SingleChildScrollView(
        child: Column(
          children: List.generate(15, (index) {
            return Center(
              child: Container(
                width: 362,
                height: 64,
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.50, color: Color(0xFF08B783)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Randy',
                            style: TextStyle(
                              color: Color(0xFF414141),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Beras Ciherang 2 Kg',
                            style: TextStyle(
                              color: Color(0xFFB8B8B8),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Today at 10:20 am',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF414141),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
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
                pilihan(),
                SizedBox(
                  height: 12,
                ),
                daftar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
