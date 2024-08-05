// import 'package:flutter/material.dart';
// import 'dart:async';
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToHome();
//   }

//   _navigateToHome() async {
//     await Future.delayed(Duration(seconds: 3), () {}); // Waktu tunggu splash screen
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => HomePage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset('assets/splash.png'), // Gambar splash screen
//       ),
//     );
//   }
// }