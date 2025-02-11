import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class detailhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFF0F4EF),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33282828),
                  offset: Offset(9, 10),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -824,
                  top: -330,
                  child: SizedBox(
                      width: 596,
                      height: 136,
                      child: SvgPicture.asset('assets/icon/Vector_.svg')),
                ),
                Positioned(
                  top: 469,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Container(
                      width: 395,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFFFFFF),
                            offset: Offset(0, 1),
                            blurRadius: 12.5,
                          ),
                        ],
                      ),
                      child: SvgPicture.asset('assets/icon/Vector_.svg'),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 48),
                  color: Color(0xFFFFFFFF),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 229, 233, 227),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/image/unsplash_N.png',
                              ),
                            ),
                          ),
                          child: SizedBox(
                            height: 499,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(1, 49, 0, 56),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 14.3, 0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFB5C9AD),
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          child: Positioned(
                                            right: 7,
                                            top: 8.7,
                                            child: Container(
                                              width: 10.7,
                                              height: 10.7,
                                              child: SizedBox(
                                                  width: 9.7,
                                                  height: 9.7,
                                                  child: Image.asset(
                                                      'assets/image/Vector(1).png')),
                                            ),
                                          ),
                                        )),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFB5C9AD),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Container(
                                      width: 28,
                                          height: 28,
                                          child: Positioned(
                                            right: 7,
                                            top: 8.7,
                                            child: Container(
                                              width: 10.7,
                                              height: 10.7,
                                              child: SizedBox(
                                                  width: 9.7,
                                                  height: 9.7,
                                              child: Image.asset(
                                                'assets/image/favorite.png',
                                                
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1.4, 0, 1, 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 13, 5, 9),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'String of pearls',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19,
                                        color: Color(0xFF101828),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '\$27.50',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            color: Color(0xFF475E3E),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(3.1, 0, 3.1, 0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 3.6, 9.8, 4.1),
                                              width: 17.1,
                                              height: 16.4,
                                              child: SizedBox(
                                                  width: 17.1,
                                                  height: 16.4,
                                                  child: Image.asset(
                                                      'assets/image/star.png')),
                                            ),
                                            Text(
                                              '4.9',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Color(0xFF101828),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  color: Color(0xFFF0F4EF),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33088000),
                                      offset: Offset(0, 1),
                                      blurRadius: 15,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  color: Color(0xFFFFFFFF),
                                  padding: EdgeInsets.fromLTRB(68, 6, 8, 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 14.3, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFB5C9AD),
                                            borderRadius:
                                                BorderRadius.circular(14),
                                          ),
                                          child: Container(
                                            width: 28,
                                            height: 28,
                                            child: Positioned(
                                              right: 7,
                                              top: 8.7,
                                              child: Container(
                                                width: 10.7,
                                                height: 10.7,
                                                child: SizedBox(
                                                    width: 9.7,
                                                    height: 9.7,
                                                    child: SvgPicture.asset(
                                                        'assets/icon/minus.svg')),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 0.5, 14.4, 0.5),
                                        child: Text(
                                          '1',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: Color(0x44101828),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFB5C9AD),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          child: Positioned(
                                            right: 8.7,
                                            top: 8.7,
                                            child: Container(
                                              width: 10.7,
                                              height: 10.7,
                                              child: SizedBox(
                                                width: 9.7,
                                                height: 9.7,
                                                child: Image.asset(
                                                  'assets/image/Vector.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.2, 0, 0.2, 6),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'About Plant',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color(0xFF101828),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF98A2B3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 789,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF475E3E),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 14.5, 0, 14.5),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        'Buy Now!',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Color(0xFFF0F4EF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
