import 'package:anak_stunting/app_bar/appbar_dashboard.dart';
import 'package:anak_stunting/pages/halaman_awal.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demmmo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB5E4FF),
        ),
        useMaterial3: true,
      ),
      home: AwalPage(),
    );
  }
}
