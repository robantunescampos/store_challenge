import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final bool? obscureText;
  const CustomField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
      controller: controller,
      obscureText: obscureText!,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Preencha esse campo, por favor!";
        }
        return null;
      },
    );
  }
}
