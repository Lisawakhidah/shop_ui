import 'package:flutter/material.dart';

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
              )
            ],
          )
        ],
      ),
    );
  }
}