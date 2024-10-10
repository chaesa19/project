import 'package:flutter/material.dart';
import 'package:proyek/pages/home_admin_page.dart';
import 'package:proyek/pages/home_user_page.dart';

class LoginPage extends StatelessWidget {
  // Definisi nomor telepon dan password untuk admin dan pelanggan
  Map<String, String> adminCredentials = {
    'phoneNumber': '123',
    'password': '123',
  };

  Map<String, String> customerCredentials = {
    'phoneNumber': '321',
    'password': '321',
  };

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void _login() {
      String enteredPhoneNumber = emailController.text;
      String enteredPassword = passwordController.text;

      if (enteredPhoneNumber.isEmpty || enteredPassword.isEmpty) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 80,
              child: Center(
                child: Text('Email dan kata sandi wajib diisi'),
              ),
            );
          },
        );
        return; // Berhenti eksekusi fungsi jika nomor telepon atau password kosong
      }

      if (enteredPhoneNumber == adminCredentials['phoneNumber'] &&
          enteredPassword == adminCredentials['password']) {
        // Redirect to Admin Home Page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeAdminPage(),
          ),
        );
      } else if (enteredPhoneNumber == customerCredentials['phoneNumber'] &&
          enteredPassword == customerCredentials['password']) {
        // Redirect to Customer Home Page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUserPage(),
          ),
        );
      } else {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 80,
              child: Center(
                child: Text('Email atau kata sandi salah.'),
              ),
            );
          },
        );
      }
    }

    Widget login() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 180, bottom: 200),
          width: 319,
          height: 362,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 319,
                height: 362,
                decoration: ShapeDecoration(
                  color: Color(0xFF2E8B57),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF868686)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 0), // Spacer
                    Container(
                      width: 268,
                      height: 53,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF868686)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone number or email',
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 101, 95, 95),
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 268,
                      height: 53,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF868686)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 101, 95, 95),
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 30,
                            ),
                            child: Text(
                              'Forgot Password??',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    GestureDetector(
                      onTap: _login,
                      child: Container(
                        width: 268,
                        height: 53,
                        decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 247, 247, 247)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Don’t have an account? Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                login(),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
