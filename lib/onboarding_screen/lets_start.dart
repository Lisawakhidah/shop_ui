import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ui/home/page/home.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 480,
            decoration: const BoxDecoration(
                color: Color(0xFFF0F4EF),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150))),
            child: Image.asset("assets/image/bg.png"),
          ),
          SizedBox(
            width: 284,
            child: Text('Create Your Own Garden!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  color: Color(0xFF1E271A),
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ))
                ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const HomePage()),
              );
            },
            child: Container(
              height: 52,
              width: 200,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: Color(0xFF475E3E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Text(
                'Lets Start !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFCFCFD),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
