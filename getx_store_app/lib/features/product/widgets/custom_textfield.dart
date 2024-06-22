import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // final controller;
  final String hintText;
  final Icon? prefixIcon;

  const MyTextField({
    super.key,
    // required this.controller,
    required this.hintText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blue.withOpacity(0.1),
        prefixIcon: prefixIcon,
        hintText: hintText,
        contentPadding: EdgeInsets.all(8.0),
        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        focusColor: Colors.red,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blue.withOpacity(0.1))),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.blue.withOpacity(0.1)),
        ),
      ),
    );
  }
}
