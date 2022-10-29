import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './loginForm.dart';

import 'loginFormInfo.dart';

class LoginPage extends StatelessWidget {
  final Function sendFormToBackend;
  LoginPage({super.key, required this.sendFormToBackend});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _onSubmit() {
    sendFormToBackend(
      loginFormInfo(
          username: _usernameController.text,
          password: _passwordController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          LoginForm(
            controller1: _usernameController,
            controller2: _passwordController,
            onSubmit: _onSubmit,
          ),
        ],
      ),
    );
  }
}
