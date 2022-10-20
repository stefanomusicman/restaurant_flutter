import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String title;
  // final FormFieldSetter<String> onSaved;
  final TextEditingController controller;

  InputField(
      {super.key,
      required this.title,
      // required this.onSaved,
      required this.controller});

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
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 17,
                  ),
                ),
              ),
              TextFormField(
                // onSaved: onSaved,
                textAlign: TextAlign.center,
                controller: controller,
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
