import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ui/home/page/product.dart';

import 'category.dart';
import 'header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categories = [
    'All',
    'Indoor',
    'Outdoor',
    'Cactus',
  ];

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/image/unsplash_w.png',
      'name': 'Jade Plant',
      'price': '\$ 40.00',
      'isLiked': false,
    },
    {
      'image': 'assets/image/unsplash_3.png',
      'name': 'Cactus',
      'price': '\$ 23.00',
      'isLiked': false,
    },
    {
      'image': 'assets/image/unsplash_w.png',
      'name': 'Jade Plant',
      'price': '\$ 40.00',
      'isLiked': false,
    },
    {
      'image': 'assets/image/unsplash_2.png',
      'name': 'Monstera',
      'price': '\$ 35.00',
      'isLiked': false,
    },
    {
      'image': 'assets/image/unsplash_1.png',
      'name': 'Philodendron',
      'price': '\$ 30.00',
      'isLiked': false,
    },
    {
      'image': 'assets/image/unsplash_3.png',
      'name': 'Cactus',
      'price': '\$ 23.00',
      'isLiked': false,
    },
  ];

  int selectedIndex = 0;
  bool isLiked = false;
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            Header(searchController: searchController),
            const SizedBox(
              height: 16,
            ),
            Category(
              categories: categories,
            ),
            const SizedBox(
              height: 16,
            ),
            Product(
              products: products,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Color(0xFF475E3E),
        radius: 25,
        child: SvgPicture.asset('assets/icon/bi_upc-scan.svg'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xFFFCFCFD),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = 0;
                      });
                    },
                    icon: SvgPicture.asset('assets/icon/home.svg',
                        colorFilter: ColorFilter.mode(
                            selectedPage == 0
                                ? Color(0xFF475E3E)
                                : Color(0xFFD0D5DD),
                            BlendMode.srcIn))),
                SizedBox(
                  width: 16,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = 1;
                      });
                    },
                    icon: SvgPicture.asset('assets/icon/love.svg',
                        colorFilter: ColorFilter.mode(
                            selectedPage == 1
                                ? Color(0xFF475E3E)
                                : Color(0xFFD0D5DD),
                            BlendMode.srcIn))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = 2;
                      });
                    },
                    icon: SvgPicture.asset('assets/icon/cart.svg',
                        colorFilter: ColorFilter.mode(
                            selectedPage == 2
                                ? Color(0xFF475E3E)
                                : Color(0xFFD0D5DD),
                            BlendMode.srcIn))),
                SizedBox(
                  width: 16,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = 3;
                      });
                    },
                    icon: SvgPicture.asset('assets/icon/profil.svg',
                        colorFilter: ColorFilter.mode(
                            selectedPage == 3
                                ? Color(0xFF475E3E)
                                : Color(0xFFD0D5DD),
                            BlendMode.srcIn))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
