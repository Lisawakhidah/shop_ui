import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/image/elips.png',
                  width: 44,
                  height: 44,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome',
                      textAlign: TextAlign.start,
                      style:GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF98A1B2),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ),
                    Text(
                      'Anna',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF1E271A),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 250,),
              Container(
                width: 24,
                height: 24,
                child: Row(
                  children: [
                    Image.asset('assets/image/notification.png'),
                  ],
                ),
              ),
              
            ],
          ),
          Row(
            children: [
              
              Image.asset('assets/image/favorite.png')
            ],
          )
        ],
      ),
    );
  }
}