import 'package:anak_stunting/pages/dashboard.dart';
import 'package:anak_stunting/pages/data_hasil.dart';
import 'package:anak_stunting/pages/input_data.dart';
import 'package:flutter/material.dart';

class AppBarDashboard extends StatelessWidget {
  const AppBarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFB5E4FF), // Set your custom color here
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: AppBar(
            title: Center(
              child: Text(
                'Dashboard',
                textAlign: TextAlign.center,
                // style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: LatestResultPage(),
    );
  }
}
