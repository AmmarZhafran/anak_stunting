import 'package:anak_stunting/app_bar/appbar_artikel.dart';
import 'package:anak_stunting/app_bar/appbar_dashboard.dart';
import 'package:anak_stunting/pages/artikel_page.dart';
import 'package:anak_stunting/pages/dashboard.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFB5E4FF),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // Warna bayangan
                offset: Offset(0, 4), // Offset bayangan (horizontal, vertical)
                blurRadius: 8, // Radius blur bayangan
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => AppBarDashboard()),
                    (route) => false, // Remove all the previous routes
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.book,
                    color: Colors.white), // Ikon e-book berwarna putih
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => AppbarArtikel()),
                    (route) => false, // Remove all the previous routes
                  );
                  // Aksi ketika ikon ditekan
                },
              ),
            ],
          )),
    );
  }
}
