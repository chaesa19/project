import 'package:flutter/material.dart';
import 'package:proyek/pages/cart_page.dart';
import 'package:proyek/pages/categories_page.dart';
import 'package:proyek/pages/login_page.dart';
import 'package:proyek/pages/detail_produk_page.dart';
import 'package:proyek/pages/home_admin_page.dart';
import 'package:proyek/pages/home_user_page.dart';
import 'package:proyek/pages/pembayaran_page.dart';
import 'package:proyek/pages/profile.dart';
import 'package:proyek/pages/riwayat_cancelled_page.dart';
import 'package:proyek/pages/riwayat_completed_page.dart';
import 'package:proyek/pages/riwayat_upcoming_page.dart';
import 'package:proyek/pages/transaksi_page.dart';
import 'package:proyek/pages/produk_deskripsi_page.dart';
import 'package:proyek/pages/produk_admin_page.dart';
import 'package:proyek/pages/splash_page.dart';
import 'package:proyek/widgets/jumlah_product.dart';

// Widget untuk menampilkan deskripsi produk
class ProdukDeskripsiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProdukDeskripsiPage();
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      initialRoute: '/splash-page',
      routes: {
        '/splash-page': (context) => SplashPage(),
        '/login-page': (context) => LoginPage(),
        '/kategori-admin-page': (context) => KategoriAdminPage(),
        '/home-admin-page': (context) => HomeAdminPage(),
        '/home-user-page': (context) => HomeUserPage(),
        '/categories-page': (context) => CategoriesPage(),
        '/cart-page': (context) => CartPage(),
        '/produk-deskripsi-page': (context) => ProdukDeskripsiPage(),
        '/jumlah-product-page': (context) => JumlahProduct(),
        '/transaksi-page': (context) => TransaksiPage(),
        '/pembayaran-page': (context) => PembayaranPage(),
        '/detail-produk-page': (context) => DetailProdukPage(),
        '/riwayat-upcoming-page': (context) => RiwayatUpcomingPage(),
        '/riwayat-completed-page': (context) => RiwayatCompletedPage(),
        '/riwayat-cancelled-page': (context) => RiwayatCancelledPage(),
        '/profile-page': (context) => ProfilePage(),
      },
    );
  }
}
