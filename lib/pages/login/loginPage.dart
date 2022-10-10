import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './loginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
              'Cafe Vici Mobile',
              textAlign: TextAlign.center,
              style: GoogleFonts.dancingScript(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const LoginForm(),
        ],
      ),
    );
  }
}
