import 'package:anak_stunting/pages/dashboard.dart';
import 'package:anak_stunting/pages/input_data.dart';
import 'package:flutter/material.dart';

class AppBarInputdata extends StatelessWidget {
  const AppBarInputdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB5E4FF),
        title: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'Cek Tinggi Badan Anak',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: HeightChecker(),
    );
  }
}
