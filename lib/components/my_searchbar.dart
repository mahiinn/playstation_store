import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Color(0xff8A8A9D)),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffffff)),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffffff)),
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: hintText,
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: Color(0xff8A8A9D),
        ),
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
