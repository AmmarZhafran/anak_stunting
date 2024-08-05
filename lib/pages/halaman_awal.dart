import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AwalPage extends StatelessWidget {
  const AwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFB5E4FF),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/loguhamka.png"),
              Image.asset("assets/logokesehatan.png"),
              Image.asset("assets/logopuskes.png"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Hello, Fltter!',
          style: GoogleFonts.fingerPaint(
            fontSize: 30,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
