import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTextFormField extends StatelessWidget {
  const MainTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.roboto(color: Colors.white70),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        filled: true,
        fillColor: Colors.grey[800],
        hintText: 'Find your product',
        hintStyle: GoogleFonts.roboto(
            color: Colors.white70, fontWeight: FontWeight.w400, fontSize: 15),
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: Colors.white70,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black54),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black54),
        ),
      ),
    );
  }
}
