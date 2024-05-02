import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ui/detail/detail.dart';

class Product extends StatefulWidget {
  const Product({
    super.key,
    required this.products,
  });
  final List<Map<String, dynamic>> products;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 12,
          childAspectRatio: 2 / 3,
        ),
        itemCount: 6,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          
          return InkWell(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (BuildContext context) =>  detailhome()
                )
              );},
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F4EF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 15,
                        right: 0,
                        left: 0,
                        child: Image.asset(
                          widget.products[index]['image'],
                          width: 150,
                          height: 150,
                        )),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFB5C9AD),
                        radius: 15,
                        child: IconButton(
                          icon: SvgPicture.asset('assets/icon/love.svg',
                              width: 16,
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                  widget.products[index]['isLiked']
                                      ? Colors.red
                                      : Colors.white,
                                  BlendMode.srcIn)),
                          onPressed: () {
                            setState(() {
                              widget.products[index]['isLiked'] =
                                  !widget.products[index]['isLiked'];
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 10,
                      child: Text(
                        widget.products[index]['name'],
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF101828),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 12,
                        left: 10,
                        child: Container(
                          alignment: Alignment.center,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color(0xFFFCFCFD),
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                          ),
                          child: Text(
                            widget.products[index]['price'],
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF475E3E),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFB5C9AD),
                        radius: 15,
                        child: IconButton(
                          icon: SvgPicture.asset('assets/icon/Vector (5).svg',
                              width: 16,
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn)),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                )),
          );
        });
  }
}
