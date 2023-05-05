import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String? errorText;
  final TextInputType textInputType;
  final Function(String)? onChange;
  final bool obscureText;
  const CustomTextField({
    super.key,
    required this.labelText,
    this.errorText,
    this.textInputType = TextInputType.text,
    this.onChange,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      keyboardType: textInputType,
      style:
          Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        errorText: errorText,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
