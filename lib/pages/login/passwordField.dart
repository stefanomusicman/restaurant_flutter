import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class passwordField extends StatelessWidget {
  final FormFieldSetter<String> onSaved;
  const passwordField({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    String inputText;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 250,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 17,
                  ),
                ),
              ),
              TextFormField(
                onSaved: onSaved,
                textAlign: TextAlign.center,
                onChanged: (text) => inputText = text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
