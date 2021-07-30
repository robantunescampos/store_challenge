import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? function;
  final String? text;
  const CustomButton({
    Key? key,
    required this.function,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: function, child: Text(text!));
  }
}
