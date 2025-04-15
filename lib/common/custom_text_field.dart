import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextField({Key? key, required this.controller, required this.labelText, this.keyboardType, this.obscureText = false, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(labelText: labelText, border: const OutlineInputBorder()),
    );
  }
}
