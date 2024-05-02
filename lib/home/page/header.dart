import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
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
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 145,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/image/notification.png',
                  width: 24, height: 24),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            SvgPicture.asset('assets/icon/maps.svg'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Dhaka, Bangladesh',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFFD0D5DD),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          controller: searchController,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: 'Search here',
            hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xFF98A2B3),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            isDense: true,
            fillColor: const Color(0xFFF2F4F7),
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                'assets/icon/search.svg',
                width: 16,
                height: 16,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(38),
                borderSide: BorderSide.none),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SizedBox(
                width: 16,
                height: 16,
                child: Image.asset('assets/image/Group.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
