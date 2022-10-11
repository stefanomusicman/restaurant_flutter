import 'package:flutter/material.dart';

class UniversalBackground extends StatelessWidget {
  final Widget child;

  const UniversalBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/so-white.png"), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
