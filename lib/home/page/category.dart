import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({
    super.key, required this.categories,
  });
final List<String> categories;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
      int selectedIndex = 0;

    return Column(
      children: [
        Text(
          textAlign: TextAlign.start,
          'Category',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.categories.length,
                itemBuilder: (context, index) {
                  EdgeInsets itemPadding =
          const EdgeInsets.symmetric(horizontal: 4, vertical: 2);
                  if (index == 0) {
        itemPadding = const EdgeInsets.only(
          left: 0,
          right: 4,
        );
                  } else if (index == widget.categories.length - 1) {
        itemPadding = const EdgeInsets.only(
          left: 4,
          right: 0,
        );
                  }
                  bool isSelected = selectedIndex == index;
                  return Padding(
        padding: itemPadding,
        child: InkWell(
          onTap: () {
            // setState(() {
            //   selectedIndex = index;
            // });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: isSelected ? const Color(0xFF475E3E) : Colors.white,
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF475E3E)
                      : Color(0xFFD0D5DD),
                )),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Center(
              child: Text(
                widget.categories[index],
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color:
                        isSelected ? Color(0xFFFCFCFD) : Color(0xFFD0D5DD),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
                  );
                }),
        ),
      ],
    );
  }
}
