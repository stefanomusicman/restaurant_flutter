import 'package:flutter/material.dart';
import 'pages/login/loginPage.dart';
import './universalBackground.dart';
import './pages/login/loginFormInfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void sendFormToBackend(loginFormInfo formData) {
    print("Sending data to backend: ${formData.username} ${formData.password}");
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UniversalBackground(
        child: LoginPage(sendFormToBackend: sendFormToBackend),
      ),
    );
  }
}
