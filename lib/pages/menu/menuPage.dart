import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './menuList.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                'Menu',
                textAlign: TextAlign.center,
                style: GoogleFonts.kalam(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            MenuList(),
          ],
        ),
      ),
    );
  }
}
