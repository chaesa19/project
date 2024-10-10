import 'package:flutter/material.dart';

class JumlahProduct extends StatefulWidget {
  @override
  _JumlahProductState createState() => _JumlahProductState();
}

class _JumlahProductState extends State<JumlahProduct> {
  int jumlah = 1;

  void tambahJumlah() {
    setState(() {
      jumlah += 1;
    });
  }

  void kurangiJumlah() {
    setState(() {
      if (jumlah > 0) {
        jumlah -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      height: 35,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 73,
              height: 35,
              decoration: ShapeDecoration(
                color: Color(0xFF1A4D2E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 34,
            top: 5,
            child: Text(
              '$jumlah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 7,
            top: 10,
            child: GestureDetector(
              onTap: kurangiJumlah,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Icon(
                  Icons.remove,
                  size: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 7,
            top: 10,
            child: GestureDetector(
              onTap: tambahJumlah,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(
                  Icons.add,
                  size: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
