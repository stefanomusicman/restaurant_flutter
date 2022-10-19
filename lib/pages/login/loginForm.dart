import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/login/passwordField.dart';
import '../home/homePage.dart';
import './userNameField.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final loginData = loginFormInfo(
    userName: "",
    password: "",
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            userNameField(onSaved: (value) => loginData.userName = value!),
            passwordField(onSaved: (value) => loginData.password = value!),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print("username: ${loginData.userName}");
                  print("password: ${loginData.password}");
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: GoogleFonts.comfortaa(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class loginFormInfo {
  String? userName;
  String? password;

  loginFormInfo({this.userName, this.password});
}
