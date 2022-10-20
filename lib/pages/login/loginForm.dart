import 'package:flutter/material.dart';
import '../home/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import './inputField.dart';

class LoginForm extends StatelessWidget {
  LoginForm(
      {super.key,
      required this.controller1,
      required this.controller2,
      required this.onSubmit});

  final controller1;
  final controller2;
  final VoidCallback onSubmit;

  final _formKey = GlobalKey<FormState>();

  // final loginData = loginFormInfo(
  //   userName: "",
  //   password: "",
  // );

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
            InputField(
              title: 'Username',
              controller: controller1,
              // onSaved: (value) => loginData.userName = value!),
            ),
            InputField(
              title: 'Password',
              controller: controller2,
              // onSaved: (value) => loginData.password = value!),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // print("username: ${loginData.userName}");
                  // print("password: ${loginData.password}");
                  onSubmit();
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
