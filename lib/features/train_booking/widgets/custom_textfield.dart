import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        filled: true,
        fillColor: Color(0xFF28293D), // Matches dark theme
        contentPadding: EdgeInsets.symmetric(
            vertical: 27.0, horizontal: 16.0), // Adjust vertical padding
      ),
    );
  }
}
